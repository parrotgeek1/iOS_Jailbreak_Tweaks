.class public final LG;
.super Ljava/lang/Object;

# interfaces
.implements Ls;


# instance fields
.field final a:J

.field public final b:Lf;

.field final c:LcB;

.field final d:Lq;

.field final e:Lo;


# direct methods
.method constructor <init>(Lf;LcB;Lq;Lo;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG;->b:Lf;

    iput-object p2, p0, LG;->c:LcB;

    iput-object p3, p0, LG;->d:Lq;

    iput-object p4, p0, LG;->e:Lo;

    iput-wide p5, p0, LG;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, LcG;->a()LcT;

    iget-object v0, p0, LG;->b:Lf;

    new-instance v1, Lk;

    invoke-direct {v1, v0}, Lk;-><init>(Lf;)V

    invoke-virtual {v0, v1}, Lf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;LK;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logged lifecycle event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, LK;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LG;->b:Lf;

    const-string v1, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, LJ;

    invoke-direct {v2, p2}, LJ;-><init>(LK;)V

    iput-object v1, v2, LJ;->c:Ljava/util/Map;

    invoke-virtual {v0, v2, v3, v3}, Lf;->a(LJ;ZZ)V

    return-void
.end method
