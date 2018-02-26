.class final Lar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lao;


# direct methods
.method constructor <init>(Lao;)V
    .locals 0

    iput-object p1, p0, Lar;->a:Lao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lar;->a:Lao;

    iget-object v0, v0, Lao;->e:Lah;

    new-instance v1, LeR;

    invoke-direct {v1, v0}, LeR;-><init>(LcQ;)V

    invoke-interface {v1}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z

    iget-object v0, p0, Lar;->a:Lao;

    iget-object v0, v0, Lao;->b:Lau;

    invoke-virtual {v0, v3}, Lau;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
