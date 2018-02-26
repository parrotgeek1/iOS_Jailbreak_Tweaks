.class final Lbk;
.super Lbr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LbK;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iget-object v0, p1, LbK;->a:Ljava/lang/String;

    iput-object v0, p0, Lbk;->a:Ljava/lang/String;

    iget-object v0, p1, LbK;->b:Ljava/lang/String;

    iput-object v0, p0, Lbk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbk;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v0, p0, Lbk;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-static {v2, v0}, Laf;->b(ILab;)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lbk;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Laf;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lbk;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v1, 0x2

    iget-object v0, p0, Lbk;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Laf;->a(ILab;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbk;->b:Ljava/lang/String;

    goto :goto_0
.end method
