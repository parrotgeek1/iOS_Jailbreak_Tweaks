.class public abstract LeI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected abstract b()V
.end method

.method public call()Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, LeI;->a()Ljava/lang/Object;
    :try_end_0
    .catch LeH; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, LeI;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LeH;

    invoke-direct {v1, v0}, LeH;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, LeI;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v2, LeH;

    invoke-direct {v2, v0}, LeH;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    move-exception v2

    if-nez v1, :cond_0

    new-instance v0, LeH;

    invoke-direct {v0, v2}, LeH;-><init>(Ljava/io/IOException;)V

    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method
