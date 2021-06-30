const name = 'Luiz Otávio';
const msg = `Hello Mr. ${name}. How are you today?`;

console.log(msg);

function sum(x, y) {
  if (typeof x !== 'number' || typeof y !== 'number') {
    throw new Error('You broke it!!!');
  }

  return x + y;
}

export default sum;
