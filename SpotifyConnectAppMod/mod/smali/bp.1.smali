.class final Lbp;
.super Lbr;


# instance fields
.field a:Lab;


# direct methods
.method public constructor <init>(Lab;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iput-object p1, p0, Lbp;->a:Lab;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lbp;->a:Lab;

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    return v0
.end method

.method public final a(Laf;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lbp;->a:Lab;

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    return-void
.end method
