.class final Ldu;
.super Ldj;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ldt;


# direct methods
.method constructor <init>(Ldt;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ldu;->b:Ldt;

    iput-object p2, p0, Ldu;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ldj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldu;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
