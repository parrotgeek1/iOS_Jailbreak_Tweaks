.class final Lbt;
.super Lbr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(LbN;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iget-object v0, p1, LbN;->a:Ljava/lang/String;

    iput-object v0, p0, Lbt;->a:Ljava/lang/String;

    iget-object v0, p1, LbN;->b:Ljava/lang/String;

    iput-object v0, p0, Lbt;->b:Ljava/lang/String;

    iget-wide v0, p1, LbN;->c:J

    iput-wide v0, p0, Lbt;->c:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbt;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbt;->b:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lbt;->c:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Laf;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbt;->a:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lbt;->b:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lbt;->c:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    return-void
.end method
