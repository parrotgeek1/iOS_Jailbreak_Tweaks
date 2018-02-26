.class public final LfC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lft;

.field private b:Ljava/net/Socket;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/io/OutputStream;

.field private e:LfA;


# direct methods
.method public constructor <init>(Lft;Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfC;->a:Lft;

    iput-object p2, p0, LfC;->b:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, LfC;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, LfC;->d:Ljava/io/OutputStream;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, LfF;

    iget-object v0, p0, LfC;->c:Ljava/io/InputStream;

    invoke-direct {v4, v0, v2}, LfF;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, LfF;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_1
    invoke-virtual {v4}, LfF;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LfE;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    const-string v0, "Content-Disposition"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v8, :cond_6

    aget-object v0, v7, v1

    const/16 v9, 0x3d

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x22

    if-ne v9, v11, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    const-string v0, "name"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Content-Type"

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "filename"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "upload"

    invoke-static {v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_3
    invoke-virtual {v4, v7}, LfF;->a([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v6, Lfy;

    invoke-direct {v6, v1, v5}, Lfy;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    const-string v1, ""

    :goto_4
    invoke-virtual {v4}, LfF;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-object v3
.end method

.method private a(LfD;Ljava/lang/String;)V
    .locals 3

    new-instance v0, LfB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LfD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LfB;-><init>(LfD;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LfC;->a(LfB;)V

    return-void
.end method


# virtual methods
.method public final a(LfB;)V
    .locals 10

    const/16 v2, 0x400

    const/16 v9, 0x20

    const/16 v8, 0xd

    const/16 v7, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HTTP/1.1 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, LfB;->a:LfD;

    iget v1, v1, LfD;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, LfB;->a:LfD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, LfB;->b:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Type"

    const-string v1, "text/html; charset=utf-8"

    invoke-virtual {p1, v0, v1}, LfB;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, LfB;->b:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Length"

    iget-wide v4, p1, LfB;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LfB;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, LfB;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LfE;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, LfC;->d:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, LfC;->e:LfA;

    if-eqz v0, :cond_4

    iget-object v0, p0, LfC;->e:LfA;

    iget-object v0, v0, LfA;->b:Lfz;

    sget-object v1, Lfz;->d:Lfz;

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p1, LfB;->a:LfD;

    sget-object v1, LfD;->g:LfD;

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/InputStream;

    if-eqz v0, :cond_6

    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6
    :goto_1
    iget-object v0, p0, LfC;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void

    :cond_7
    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    :try_start_0
    iget-wide v4, p1, LfB;->d:J

    const/16 v1, 0x400

    new-array v3, v1, [B

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    const/4 v6, 0x0

    const-wide/16 v8, 0x400

    cmp-long v1, v4, v8

    if-lez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v0, v3, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_9

    iget-object v6, p0, LfC;->d:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v1

    sub-long/2addr v4, v6

    goto :goto_2

    :cond_8
    long-to-int v1, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_a
    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LfC;->d:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_b
    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_6

    iget-object v1, p0, LfC;->d:Ljava/io/OutputStream;

    iget-object v0, p1, LfB;->c:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public final run()V
    .locals 12

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/16 v0, 0x2000

    :try_start_0
    new-array v1, v0, [B

    move v0, v2

    :goto_0
    iget-object v3, p0, LfC;->c:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v11, :cond_1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x3

    aget-byte v3, v1, v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v0, -0x2

    aget-byte v3, v1, v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v1, v3

    if-ne v3, v5, :cond_0

    aget-byte v3, v1, v0

    if-eq v3, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v0, LfD;->q:LfD;

    sget-object v1, LfD;->q:LfD;

    invoke-virtual {v1}, LfD;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {}, Lfz;->values()[Lfz;

    move-result-object v8

    array-length v9, v8

    move v3, v2

    :goto_2
    if-ge v3, v9, :cond_3

    aget-object v0, v8, v3

    invoke-virtual {v0}, Lfz;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    sget-object v0, LfD;->v:LfD;

    const-string v1, "This server currently does not support this method."

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v6, 0x1

    const/16 v3, 0x20

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, LfE;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    new-instance v4, LfA;

    invoke-direct {v4, p0, v1, v0, v3}, LfA;-><init>(LfC;Lfz;Ljava/lang/String;Ljava/util/Map;)V

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v11, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, LfA;->d:Ljava/lang/String;

    invoke-static {v6}, LfE;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v4, LfA;->f:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, LfA;->c:Ljava/lang/String;

    :cond_6
    const-string v0, "Cookie"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LfC;->a:Lft;

    sget v5, Lfw;->e:I

    invoke-virtual {v0, v5}, Lft;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v0, "Cookie"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, ";"

    invoke-direct {v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v11, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lfx;

    invoke-direct {v7, v8, v0}, Lfx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v5}, LfA;->a(Ljava/util/List;)V

    :cond_9
    sget-object v0, Lfz;->b:Lfz;

    if-ne v1, v0, :cond_b

    iget-object v0, p0, LfC;->a:Lft;

    sget v1, Lfw;->b:I

    invoke-virtual {v0, v1}, Lft;->a(I)Z

    move-result v5

    iget-object v0, p0, LfC;->a:Lft;

    sget v1, Lfw;->c:I

    invoke-virtual {v0, v1}, Lft;->a(I)Z

    move-result v6

    if-nez v5, :cond_a

    if-eqz v6, :cond_13

    :cond_a
    const-string v0, "Content-Length"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, LfD;->B:LfD;

    sget-object v1, LfD;->B:LfD;

    invoke-virtual {v1}, LfD;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    :cond_b
    :goto_6
    iput-object v4, p0, LfC;->e:LfA;

    iget-object v0, p0, LfC;->a:Lft;

    invoke-virtual {v0, v4}, Lft;->a(LfA;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "Content-Length"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "Content-Type"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v11, :cond_14

    const/4 v1, 0x0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_7
    const-string v3, "multipart/form-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v6, :cond_d

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LfC;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, LfA;->g:Ljava/util/Map;

    goto :goto_6

    :cond_d
    sget-object v0, LfD;->q:LfD;

    const-string v1, "This server does not support multipart/form-data requests."

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_12

    new-array v3, v7, [B

    move v0, v2

    :goto_8
    sub-int v2, v7, v0

    if-lez v2, :cond_f

    iget-object v2, p0, LfC;->c:Ljava/io/InputStream;

    sub-int v5, v7, v0

    invoke-virtual {v2, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_f

    add-int/2addr v0, v2

    goto :goto_8

    :cond_f
    if-ge v0, v7, :cond_10

    sget-object v0, LfD;->q:LfD;

    const-string v1, "Unable to read correct amount of data!"

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, LfE;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, LfA;->g:Ljava/util/Map;

    goto/16 :goto_6

    :cond_11
    iput-object v0, v4, LfA;->e:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    sget-object v0, LfD;->q:LfD;

    const-string v1, "This server does not support POST requests."

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    sget-object v0, LfD;->v:LfD;

    const-string v1, "This server does not support POST requests."

    invoke-direct {p0, v0, v1}, LfC;->a(LfD;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :cond_14
    move-object v1, v0

    goto :goto_7

    :cond_15
    move-object v0, v1

    goto/16 :goto_3
.end method
