.class final Lbu;
.super Lbr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(LbO;Lbs;)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Lbr;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v2, v0}, Lbr;-><init>(I[Lbr;)V

    iget-object v0, p1, LbO;->a:Ljava/lang/String;

    iput-object v0, p0, Lbu;->a:Ljava/lang/String;

    iget v0, p1, LbO;->b:I

    iput v0, p0, Lbu;->b:I

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lbu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-direct {p0}, Lbu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lbu;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lbu;->b:I

    invoke-static {v1, v2}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laf;)V
    .locals 2

    invoke-direct {p0}, Lbu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lbu;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lbu;->b:I

    invoke-virtual {p1, v0, v1}, Laf;->a(II)V

    return-void
.end method
