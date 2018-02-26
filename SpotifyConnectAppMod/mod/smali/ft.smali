.class public final Lft;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public b:Ljava/util/List;

.field public c:Z

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lft;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lft;->b:Ljava/util/List;

    new-instance v0, Lfu;

    invoke-direct {v0, p0}, Lfu;-><init>(Lft;)V

    iput-object v0, p0, Lft;->e:Ljava/util/BitSet;

    new-instance v0, LfG;

    invoke-direct {v0}, LfG;-><init>()V

    invoke-static {v0}, Ljava/net/URLConnection;->setFileNameMap(Ljava/net/FileNameMap;)V

    return-void
.end method


# virtual methods
.method public final a(LfA;)V
    .locals 4

    iget-object v0, p0, Lft;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfv;

    invoke-interface {v0, p1}, Lfv;->a(LfA;)LfB;

    move-result-object v0

    iget-object v1, p1, LfA;->a:LfC;

    invoke-virtual {v1, v0}, LfC;->a(LfB;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lfw;->d:I

    invoke-virtual {p0, v0}, Lft;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LfA;->a:LfC;

    new-instance v1, LfB;

    sget-object v2, LfD;->u:LfD;

    sget-object v3, LfD;->u:LfD;

    invoke-virtual {v3}, LfD;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfB;-><init>(LfD;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LfC;->a(LfB;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    iget-object v0, p0, Lft;->e:Ljava/util/BitSet;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lft;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lft;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LfC;

    iget-object v2, p0, Lft;->a:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LfC;-><init>(Lft;Ljava/net/Socket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method
