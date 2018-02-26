.class final Lg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LeT;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lf;


# direct methods
.method constructor <init>(Lf;LeT;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg;->c:Lf;

    iput-object p2, p0, Lg;->a:LeT;

    iput-object p3, p0, Lg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg;->c:Lf;

    iget-object v0, v0, Lf;->g:LH;

    iget-object v1, p0, Lg;->a:LeT;

    iget-object v2, p0, Lg;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LH;->a(LeT;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
