.class final LdK;
.super LdS;


# instance fields
.field final synthetic a:LdI;


# direct methods
.method constructor <init>(LdI;)V
    .locals 1

    iput-object p1, p0, LdK;->a:LdI;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LdS;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LdK;->a:LdI;

    invoke-static {v0}, LdI;->a(LdI;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, LdK;->a:LdI;

    iget-object v1, p0, LdK;->a:LdI;

    invoke-virtual {v1}, LdI;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LdI;->a(LdI;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
