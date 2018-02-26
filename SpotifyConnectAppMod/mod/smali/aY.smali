.class final LaY;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:LaW;


# direct methods
.method constructor <init>(LaW;)V
    .locals 0

    iput-object p1, p0, LaY;->a:LaW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, LaY;->a:LaW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaW;->a(LaW;Z)Z

    return-void
.end method
