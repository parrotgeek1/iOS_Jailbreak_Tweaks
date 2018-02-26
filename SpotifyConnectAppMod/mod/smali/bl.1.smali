.class final Lbl;
.super Lbr;


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lbr;

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    iput p1, p0, Lbl;->a:F

    iput p2, p0, Lbl;->b:I

    iput-boolean p3, p0, Lbl;->c:Z

    iput p4, p0, Lbl;->d:I

    iput-wide p5, p0, Lbl;->e:J

    iput-wide p7, p0, Lbl;->f:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-static {}, Laf;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Lbl;->b:I

    invoke-static {v1}, Laf;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Laf;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lbl;->d:I

    invoke-static {v1, v2}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lbl;->e:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lbl;->f:J

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Laf;)V
    .locals 4

    iget v0, p0, Lbl;->a:F

    invoke-virtual {p1, v0}, Laf;->a(F)V

    iget v0, p0, Lbl;->b:I

    invoke-virtual {p1, v0}, Laf;->a(I)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lbl;->c:Z

    invoke-virtual {p1, v0, v1}, Laf;->a(IZ)V

    const/4 v0, 0x4

    iget v1, p0, Lbl;->d:I

    invoke-virtual {p1, v0, v1}, Laf;->a(II)V

    const/4 v0, 0x5

    iget-wide v2, p0, Lbl;->e:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x6

    iget-wide v2, p0, Lbl;->f:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    return-void
.end method
