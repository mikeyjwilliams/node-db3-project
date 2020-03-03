const db = require('../data/config');

module.exports = {
  find,
  findById,
  findSteps,
};

function find() {
  return db('schemes').select('*');
}

function findById(id) {
  return db('schemes')
    .where({ id: id })
    .select('*');
}

function findSteps(id) {
  return db('schemes as s')
    .join('steps as st', 'st.scheme_id', 's.id')
    .where('s.id', id)
    .orderBy('st.step_number', 'asc')
    .select(
      's.scheme_name as scheme_name',
      'st.step_number as step_number',
      'st.instructions as step_instruction'
    );
}
