.class final LaR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lah;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lah;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaR;->a:Lah;

    iput-object p2, p0, LaR;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LaR;->a:Lah;

    iget-object v0, v0, LcQ;->p:Landroid/content/Context;

    invoke-static {v0}, Ldk;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, LcG;->a()LcT;

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->a()Lfn;

    move-result-object v0

    iget-object v1, p0, LaR;->a:Lah;

    invoke-virtual {v1, v0}, Lah;->a(Lfn;)LaU;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lbz;

    invoke-direct {v1, v0}, Lbz;-><init>(LaU;)V

    new-instance v0, LbD;

    iget-object v2, p0, LaR;->b:Ljava/io/File;

    invoke-static {}, LaD;->b()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, LbD;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lbz;->a(Lby;)Z

    goto :goto_0
.end method
