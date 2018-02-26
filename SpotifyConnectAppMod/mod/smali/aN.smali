.class public final LaN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:LaD;


# direct methods
.method public constructor <init>(LaD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LaN;->d:LaD;

    iput-object p2, p0, LaN;->a:Ljava/lang/String;

    iput-object p3, p0, LaN;->b:Ljava/lang/String;

    iput-object p4, p0, LaN;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, LaN;->d:LaD;

    invoke-static {v0}, LaD;->b(LaD;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbf;

    iget-object v3, p0, LaN;->d:LaD;

    invoke-static {v3}, LaD;->c(LaD;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lbf;-><init>(Ljava/io/File;)V

    new-instance v3, LbF;

    iget-object v4, p0, LaN;->a:Ljava/lang/String;

    iget-object v5, p0, LaN;->b:Ljava/lang/String;

    iget-object v6, p0, LaN;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, LbF;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lbf;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-static {v3}, Lbf;->a(LbF;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lbf;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "Failed to close user metadata file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error serializing user metadata."

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Failed to close user metadata file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    const-string v1, "Failed to close user metadata file."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, LaN;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
