.class final LaM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:LaD;


# direct methods
.method constructor <init>(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LaM;->d:LaD;

    iput-object p2, p0, LaM;->a:Ljava/util/Date;

    iput-object p3, p0, LaM;->b:Ljava/lang/Thread;

    iput-object p4, p0, LaM;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LaM;->d:LaD;

    iget-object v1, p0, LaM;->a:Ljava/util/Date;

    iget-object v2, p0, LaM;->b:Ljava/lang/Thread;

    iget-object v3, p0, LaM;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, LaD;->a(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
