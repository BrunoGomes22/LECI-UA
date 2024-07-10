enum Direction {
    Down(0, 1),
    DownRight(1, 1),
    Right(1, 0),
    UpRight(1, -1),
    Up(0, -1),
    UpLeft(-1, -1),
    Left(-1, 0),
    DownLeft(-1, 1);

    public static int length = 8;

    public static Direction getDirection(int n) {
        Direction dir = Direction.values()[n];

        return dir;
    }

    public int col,
               row;

    private Direction(int col, int row){
        this.col = col;
        this.row = row;
    }
}