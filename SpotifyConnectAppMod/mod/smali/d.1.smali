.class public abstract Ld;
.super Ljava/lang/Object;


# instance fields
.field final a:Le;

.field public final b:Lc;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le;

    invoke-static {}, LcG;->b()Z

    move-result v1

    invoke-direct {v0, v1}, Le;-><init>(Z)V

    iput-object v0, p0, Ld;->a:Le;

    new-instance v0, Lc;

    iget-object v1, p0, Ld;->a:Le;

    invoke-direct {v0, v1}, Lc;-><init>(Le;)V

    iput-object v0, p0, Ld;->b:Lc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ld;
    .locals 1

    iget-object v0, p0, Ld;->b:Lc;

    invoke-virtual {v0, p1, p2}, Lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
