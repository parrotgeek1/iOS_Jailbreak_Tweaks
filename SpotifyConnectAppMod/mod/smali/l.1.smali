.class final Ll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LJ;

.field final synthetic b:Z

.field final synthetic c:Lf;


# direct methods
.method constructor <init>(Lf;LJ;Z)V
    .locals 0

    iput-object p1, p0, Ll;->c:Lf;

    iput-object p2, p0, Ll;->a:LJ;

    iput-boolean p3, p0, Ll;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ll;->c:Lf;

    iget-object v0, v0, Lf;->g:LH;

    iget-object v1, p0, Ll;->a:LJ;

    invoke-interface {v0, v1}, LH;->a(LJ;)V

    iget-boolean v0, p0, Ll;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll;->c:Lf;

    iget-object v0, v0, Lf;->g:LH;

    invoke-interface {v0}, LH;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to process event"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
