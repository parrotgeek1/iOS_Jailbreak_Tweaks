.class final Lam;
.super Ljava/lang/Object;

# interfaces
.implements Lfk;


# instance fields
.field final synthetic a:Lah;


# direct methods
.method constructor <init>(Lah;)V
    .locals 0

    iput-object p1, p0, Lam;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lfn;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lfn;->d:Lfe;

    iget-boolean v1, v1, Lfe;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam;->a:Lah;

    new-instance v2, LeR;

    invoke-direct {v2, v1}, LeR;-><init>(LcQ;)V

    invoke-interface {v2}, LeQ;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
