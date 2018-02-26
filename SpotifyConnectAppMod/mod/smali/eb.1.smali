.class public Leb;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements LdT;
.implements Lec;
.implements Leg;


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1}, Leb;->b(Ljava/lang/Object;)LdT;

    move-result-object v0

    iput-object v0, p0, Leb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p1}, Leb;->b(Ljava/lang/Object;)LdT;

    move-result-object v0

    iput-object v0, p0, Leb;->b:Ljava/lang/Object;

    return-void
.end method

.method private static b(Ljava/lang/Object;)LdT;
    .locals 1

    invoke-static {p0}, Led;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, LdT;

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Led;

    invoke-direct {p0}, Led;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    invoke-interface {v0}, Lec;->a()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Leg;

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0, p1}, LdT;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0, p1}, Leg;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0, p1}, Leg;->a(Z)V

    return-void
.end method

.method public b()LdT;
    .locals 1

    iget-object v0, p0, Leb;->b:Ljava/lang/Object;

    check-cast v0, LdT;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    invoke-interface {v0, p1}, Lec;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0}, LdT;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0}, LdT;->g()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Leb;->b()LdT;

    move-result-object v0

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0}, Leg;->h()Z

    move-result v0

    return v0
.end method
