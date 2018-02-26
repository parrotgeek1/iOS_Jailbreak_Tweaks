.class final LaF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:LaD;


# direct methods
.method constructor <init>(LaD;)V
    .locals 0

    iput-object p1, p0, LaF;->a:LaD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LaF;->a:LaD;

    invoke-static {v0}, LaD;->d(LaD;)V

    const/4 v0, 0x0

    return-object v0
.end method
