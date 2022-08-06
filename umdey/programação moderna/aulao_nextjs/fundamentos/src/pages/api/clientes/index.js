export default function handler(req, res) {

   if (req.method === "GET") {
      handlerGet(req, res)
   } else {
      res.status(405).send("N�o suporta")
   }
}

function handlerGet(req, res) {
   res.status(200).json({
      id: 1,
      nome: "Maciel",
      idade: 20
   })
}