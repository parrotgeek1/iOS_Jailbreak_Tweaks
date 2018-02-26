.class final Laj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lah;


# direct methods
.method constructor <init>(Lah;)V
    .locals 0

    iput-object p1, p0, Laj;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laj;->a:Lah;

    invoke-static {v0}, Lah;->a(Lah;)Lay;

    move-result-object v0

    invoke-virtual {v0}, Lay;->a()Z

    invoke-static {}, LcG;->a()LcT;

    const/4 v0, 0x0

    return-object v0
.end method
