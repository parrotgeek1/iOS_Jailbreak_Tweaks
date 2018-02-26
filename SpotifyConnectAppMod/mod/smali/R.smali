.class final LR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQ;


# direct methods
.method constructor <init>(LQ;)V
    .locals 0

    iput-object p1, p0, LR;->a:LQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LR;->a:LQ;

    iget-object v0, v0, LQ;->a:LP;

    invoke-virtual {v0}, LP;->a()V

    return-void
.end method
