let player1turn = true;
let gameEnd = false;
let board = [
    ['','',''],
    ['','',''],
    ['','','']
];

function printboard(board)
{
    for(let i = 0;i < 3; i++)
    {
        console.log(board[i]);
    }
}
function checkForWin(board)
{
    //straight across win
    if ( ((board[0][0] == board[0][1]) && (board[0][0] == board[0][2])) 
    || ((board[1][0] == board[1][1]) && (board[1][0] == board[1][2]))
    || ((board[2][0] == board[2][1]) && (board[2][0] == board[2][2])))
    {
        return true;
    }
    else if(((board[0][0] == board[1][1]) && (board[0][0] == board[2][2])) 
    || ((board[0][2] == board[1][1]) && (board[0][2] == board[2][0])))
    { //Diagonal win
        return true;
    }
    else{
        return false;
    }
}

//Game main loop
while(gameEnd == false){
   
    console.table(board);
    
    if(player1turn== true)
    {
        console.log("PlayerOne's turn \nPick a spot to put an X")
        player1turn = false;
    }
    else{
        console.log("PlayerTwo's turn")
        player1turn = true;
    }
    
    if(checkForWin(board) == true)
    {
        if(player1turn == true)
        {
            console.log('Player one wins!');
            gameEnd = true;
        }
        else{
            console.log('Player two wins!');
            gameEnd = true;
        }
    }
}
