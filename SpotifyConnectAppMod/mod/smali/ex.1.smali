.class public final Lex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Let;


# direct methods
.method public constructor <init>(Landroid/content/Context;Let;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex;->a:Landroid/content/Context;

    iput-object p2, p0, Lex;->b:Let;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lex;->a:Landroid/content/Context;

    invoke-static {v0}, Ldk;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lex;->b:Let;

    invoke-interface {v0}, Let;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lex;->b:Let;

    invoke-interface {v0}, Let;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lex;->a:Landroid/content/Context;

    const-string v1, "Failed to roll over file"

    invoke-static {v0, v1}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
