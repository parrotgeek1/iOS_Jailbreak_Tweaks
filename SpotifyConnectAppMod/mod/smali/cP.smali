.class public final LcP;
.super LdX;


# instance fields
.field final a:LcQ;


# direct methods
.method public constructor <init>(LcQ;)V
    .locals 0

    invoke-direct {p0}, LdX;-><init>()V

    iput-object p1, p0, LcP;->a:LcQ;

    return-void
.end method

.method private a(Ljava/lang/String;)LdH;
    .locals 3

    new-instance v0, LdH;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LcP;->a:LcQ;

    invoke-virtual {v2}, LcQ;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, LdH;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LdH;->a()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, LdW;->c:I

    return v0
.end method

.method protected final b()V
    .locals 5

    invoke-super {p0}, LdX;->b()V

    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, LcP;->a(Ljava/lang/String;)LdH;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, LcP;->a:LcQ;

    invoke-virtual {v0}, LcQ;->a_()Z
    :try_end_0
    .catch Leh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, LdH;->b()V

    if-nez v0, :cond_0

    invoke-virtual {p0}, LcP;->c_()Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, LdH;->b()V

    invoke-virtual {p0}, LcP;->c_()Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failure onPreExecute()"

    invoke-interface {v2, v3, v4, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, LdH;->b()V

    invoke-virtual {p0}, LcP;->c_()Z

    goto :goto_0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, LcP;->a:LcQ;

    iget-object v0, v0, LcQ;->q:LcM;

    invoke-interface {v0}, LcM;->a()V

    return-void
.end method

.method protected final d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LcP;->a:LcQ;

    invoke-virtual {v1}, LcQ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LcO;

    invoke-direct {v1, v0}, LcO;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LcP;->a:LcQ;

    iget-object v0, v0, LcQ;->q:LcM;

    invoke-interface {v0, v1}, LcM;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final synthetic e()Ljava/lang/Object;
    .locals 3

    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, LcP;->a(Ljava/lang/String;)LdH;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, LdI;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, LcP;->a:LcQ;

    invoke-virtual {v0}, LcQ;->e()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, LdH;->b()V

    return-object v0
.end method
