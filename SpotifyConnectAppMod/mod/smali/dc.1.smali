.class final Ldc;
.super Ldj;


# instance fields
.field final synthetic a:Lda;

.field final synthetic b:Ldb;


# direct methods
.method constructor <init>(Ldb;Lda;)V
    .locals 0

    iput-object p1, p0, Ldc;->b:Ldb;

    iput-object p2, p0, Ldc;->a:Lda;

    invoke-direct {p0}, Ldj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldc;->b:Ldb;

    invoke-virtual {v0}, Ldb;->a()Lda;

    move-result-object v0

    iget-object v1, p0, Ldc;->a:Lda;

    invoke-virtual {v1, v0}, Lda;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LcG;->a()LcT;

    iget-object v1, p0, Ldc;->b:Ldb;

    invoke-virtual {v1, v0}, Ldb;->a(Lda;)V

    :cond_0
    return-void
.end method
