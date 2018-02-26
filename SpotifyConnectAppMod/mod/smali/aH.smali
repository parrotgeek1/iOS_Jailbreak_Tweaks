.class final LaH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaD;


# direct methods
.method constructor <init>(LaD;)V
    .locals 0

    iput-object p1, p0, LaH;->a:LaD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v1, 0x0

    iget-object v3, p0, LaH;->a:LaD;

    iget-object v0, p0, LaH;->a:LaD;

    sget-object v2, Lad;->a:Ljava/io/FilenameFilter;

    invoke-static {v0, v2}, LaD;->a(LaD;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    iget-object v0, v3, LaD;->g:Lah;

    invoke-virtual {v0}, Lah;->g()Ljava/io/File;

    move-result-object v0

    const-string v5, "invalidClsFiles"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    invoke-static {}, LcG;->a()LcT;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found invalid session part file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, LaI;

    invoke-direct {v6, v3, v0}, LaI;-><init>(LaD;Ljava/lang/String;)V

    invoke-static {}, LcG;->a()LcT;

    invoke-virtual {v3, v6}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    invoke-static {}, LcG;->a()LcT;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Deleting session file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    return-void
.end method
