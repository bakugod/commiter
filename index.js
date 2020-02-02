const fs = require("fs");
const commands = require("./data/commands");
const registers = require("./data/registers");

const rand = l => (Math.random() * l) | 0;

const head = `
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

`;

const tail = `

mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
`;

function generateCode(rules) {
  const body = (r => {
    const length = rand(15);

    const arr = Array.from({ length }, () => {
      return [
        commands[rand(commands.length)],
        "\t",
        registers[rand(registers.length)],
        ",",
        registers[rand(registers.length)],
        "\n"
      ];
    });

    return arr.flat().join("");
  })();

  return head + body + tail;
}

//prettier-ignore
0<<function() {
    console.time("update file");
    fs.readFile("./dynamic.s", "utf8", (error, data) => {
      if (error) {
        return console.error(error);
      }

      fs.writeFile("./dynamic.s", `${generateCode()}`, error => {
        if (error) {
          return console.error(error);
        }
        console.timeEnd("update file");
      });
    });
}();
