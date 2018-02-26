.class final Lbj;
.super Lbr;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LbJ;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iget-wide v0, p1, LbJ;->a:J

    iput-wide v0, p0, Lbj;->a:J

    iget-wide v0, p1, LbJ;->b:J

    iput-wide v0, p0, Lbj;->b:J

    iget-object v0, p1, LbJ;->c:Ljava/lang/String;

    iput-object v0, p0, Lbj;->c:Ljava/lang/String;

    iget-object v0, p1, LbJ;->d:Ljava/lang/String;

    iput-object v0, p0, Lbj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v0, 0x1

    iget-wide v2, p0, Lbj;->a:J

    invoke-static {v0, v2, v3}, Laf;->b(IJ)I

    move-result v0

    const/4 v1, 0x2

    iget-wide v2, p0, Lbj;->b:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Lbj;->c:Ljava/lang/String;

    invoke-static {v3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v3

    invoke-static {v2, v3}, Laf;->b(ILab;)I

    move-result v2

    const/4 v3, 0x4

    iget-object v4, p0, Lbj;->d:Ljava/lang/String;

    invoke-static {v4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v4

    invoke-static {v3, v4}, Laf;->b(ILab;)I

    move-result v3

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public final a(Laf;)V
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbj;->a:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lbj;->b:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x3

    iget-object v1, p0, Lbj;->c:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x4

    iget-object v1, p0, Lbj;->d:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    return-void
.end method
