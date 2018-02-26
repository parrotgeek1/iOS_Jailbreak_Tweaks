.class final Laf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf;->d:Ljava/io/OutputStream;

    iput-object p2, p0, Laf;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Laf;->c:I

    const/16 v0, 0x1000

    iput v0, p0, Laf;->b:I

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Laf;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static a(Ljava/io/OutputStream;)Laf;
    .locals 2

    new-instance v0, Laf;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Laf;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private a(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Laf;->g(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Laf;->g(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    invoke-static {p0}, Laf;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(IJ)I
    .locals 7

    const-wide/16 v4, 0x0

    invoke-static {p0}, Laf;->d(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILab;)I
    .locals 3

    invoke-static {p0}, Laf;->d(I)I

    move-result v0

    iget-object v1, p1, Lab;->a:[B

    array-length v1, v1

    invoke-static {v1}, Laf;->f(I)I

    move-result v1

    iget-object v2, p1, Lab;->a:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Laf;->d(I)I

    move-result v0

    invoke-static {p0}, Laf;->h(I)I

    move-result v1

    invoke-static {v1}, Laf;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(II)I
    .locals 2

    invoke-static {p0}, Laf;->d(I)I

    move-result v0

    invoke-static {p1}, Laf;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, LbH;->a(II)I

    move-result v0

    invoke-static {v0}, Laf;->f(I)I

    move-result v0

    return v0
.end method

.method public static d(II)I
    .locals 2

    invoke-static {p0}, Laf;->d(I)I

    move-result v1

    if-ltz p1, :cond_0

    invoke-static {p1}, Laf;->f(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static f(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private g(I)V
    .locals 4

    int-to-byte v0, p1

    iget v1, p0, Laf;->c:I

    iget v2, p0, Laf;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Laf;->b()V

    :cond_0
    iget-object v1, p0, Laf;->a:[B

    iget v2, p0, Laf;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Laf;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method private static h(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Laf;->e(II)V

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Laf;->g(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Laf;->g(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Laf;->g(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Laf;->g(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Laf;->e(II)V

    invoke-static {p1}, Laf;->h(I)I

    move-result v0

    invoke-virtual {p0, v0}, Laf;->e(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laf;->e(II)V

    invoke-virtual {p0, p2}, Laf;->e(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laf;->e(II)V

    invoke-direct {p0, p2, p3}, Laf;->a(J)V

    return-void
.end method

.method public final a(ILab;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Laf;->e(II)V

    iget-object v0, p2, Lab;->a:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Laf;->e(I)V

    iget-object v0, p2, Lab;->a:[B

    array-length v0, v0

    iget v1, p0, Laf;->b:I

    iget v2, p0, Laf;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Laf;->a:[B

    iget v2, p0, Laf;->c:I

    invoke-virtual {p2, v1, v6, v2, v0}, Lab;->a([BIII)V

    iget v1, p0, Laf;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Laf;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Laf;->b:I

    iget v2, p0, Laf;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Laf;->a:[B

    iget v3, p0, Laf;->c:I

    invoke-virtual {p2, v2, v6, v3, v1}, Lab;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Laf;->b:I

    iput v1, p0, Laf;->c:I

    invoke-virtual {p0}, Laf;->b()V

    iget v1, p0, Laf;->b:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Laf;->a:[B

    invoke-virtual {p2, v1, v2, v6, v0}, Lab;->a([BIII)V

    iput v0, p0, Laf;->c:I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p2, Lab;->a:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    int-to-long v4, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Laf;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Laf;->a:[B

    invoke-virtual {v2, v4, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, Laf;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Laf;->a:[B

    invoke-virtual {v1, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laf;->e(II)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Laf;->g(I)V

    return-void
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Laf;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Laf;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Laf;->a:[B

    iget v2, p0, Laf;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Laf;->c:I

    return-void
.end method

.method public final b(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laf;->e(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Laf;->e(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Laf;->a(J)V

    goto :goto_0
.end method

.method public final e(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Laf;->g(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Laf;->g(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final e(II)V
    .locals 1

    invoke-static {p1, p2}, LbH;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Laf;->e(I)V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Laf;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laf;->b()V

    :cond_0
    return-void
.end method
