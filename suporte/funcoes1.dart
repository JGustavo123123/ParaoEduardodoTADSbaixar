void exibirrOla() {
  print("olá");

}

void exibirMsgPosicional(String msg) {
  print('Msg:$msg');


}

void exibirMsgNomeado({required String msg}){
  print('Msg: $msg');}

bool menorQue5 (int numero){
  return numero < 5;
}

bool par (int numero){
  return numero %2 ==0;
}


int soma(int n1,int n2){
  return n1+n2;
}
void main(List<String>args) {
  exibirrOla();
  exibirMsgPosicional('Msg1');
  exibirMsgNomeado(msg:'Msg2');

  print(menorQue5(3));
  print(par(10));
  print(soma(1,3));


}