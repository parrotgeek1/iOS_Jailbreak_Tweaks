.class public final LfF;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LfF;->c:Z

    iput-object p1, p0, LfF;->a:Ljava/io/InputStream;

    iput-object p2, p0, LfF;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, LfF;->e:[B

    return-void
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, LfF;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, LfF;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LfF;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, LfF;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LfF;->b:Ljava/nio/ByteBuffer;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LfF;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a([B)I
    .locals 9

    const/16 v8, 0xd

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget-boolean v0, p0, LfF;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LfF;->c:Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LfF;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v4, v2

    move v0, v1

    :goto_1
    const/16 v5, 0x400

    if-ge v4, v5, :cond_2

    :try_start_0
    invoke-direct {p0}, LfF;->c()I

    move-result v5

    if-eq v5, v3, :cond_2

    add-int/lit8 v6, v4, 0x0

    int-to-byte v5, v5

    aput-byte v5, p1, v6

    add-int/lit8 v5, v4, 0x0

    aget-byte v5, p1, v5

    iget-object v6, p0, LfF;->e:[B

    aget-byte v6, v6, v0

    if-ne v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, LfF;->e:[B

    array-length v5, v5

    if-lt v0, v5, :cond_4

    const/4 v5, 0x1

    iput-boolean v5, p0, LfF;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-boolean v5, p0, LfF;->c:Z

    if-eqz v5, :cond_7

    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [B

    add-int/lit8 v6, v4, 0x0

    sub-int/2addr v6, v0

    array-length v7, v5

    invoke-static {p1, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, LfF;->b:Ljava/nio/ByteBuffer;

    sub-int v1, v4, v0

    :goto_3
    if-ge v1, v4, :cond_5

    add-int/lit8 v5, v1, 0x0

    aput-byte v3, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, LfF;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, LfF;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eq v1, v8, :cond_6

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    :cond_6
    iget-object v3, p0, LfF;->b:Ljava/nio/ByteBuffer;

    iget-object v5, p0, LfF;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v1, v5

    if-ne v1, v8, :cond_8

    const/4 v1, 0x2

    :goto_4
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    sub-int v0, v4, v0

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-direct {p0}, LfF;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-direct {p0}, LfF;->c()I

    move-result v1

    iget-object v2, p0, LfF;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, LfF;->e:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LfF;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
