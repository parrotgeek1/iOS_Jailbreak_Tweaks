.class final Lh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf;


# direct methods
.method constructor <init>(Lf;)V
    .locals 0

    iput-object p1, p0, Lh;->a:Lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lh;->a:Lf;

    iget-object v0, v0, Lf;->g:LH;

    iget-object v1, p0, Lh;->a:Lf;

    new-instance v2, Lu;

    invoke-direct {v2}, Lu;-><init>()V

    iput-object v2, v1, Lf;->g:LH;

    invoke-interface {v0}, LH;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to disable events"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
