.class final Lbo;
.super Lbr;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(LbP;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iget-wide v0, p1, LbP;->a:J

    iput-wide v0, p0, Lbo;->a:J

    iget-object v0, p1, LbP;->b:Ljava/lang/String;

    iput-object v0, p0, Lbo;->b:Ljava/lang/String;

    iget-object v0, p1, LbP;->c:Ljava/lang/String;

    iput-object v0, p0, Lbo;->c:Ljava/lang/String;

    iget-wide v0, p1, LbP;->d:J

    iput-wide v0, p0, Lbo;->d:J

    iget v0, p1, LbP;->e:I

    iput v0, p0, Lbo;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbo;->a:J

    invoke-static {v0, v2, v3}, Laf;->b(IJ)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbo;->b:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lbo;->c:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lbo;->d:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lbo;->e:I

    invoke-static {v1, v2}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Laf;)V
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbo;->a:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x2

    iget-object v1, p0, Lbo;->b:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lbo;->c:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lbo;->d:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x5

    iget v1, p0, Lbo;->e:I

    invoke-virtual {p1, v0, v1}, Laf;->a(II)V

    return-void
.end method
