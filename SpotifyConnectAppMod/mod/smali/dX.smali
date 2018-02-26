.class public abstract LdX;
.super LdI;

# interfaces
.implements LdT;
.implements Lec;
.implements Leg;


# instance fields
.field private final a:Led;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LdI;-><init>()V

    new-instance v0, Led;

    invoke-direct {v0}, Led;-><init>()V

    iput-object v0, p0, LdX;->a:Led;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    invoke-interface {v0}, Lec;->a()I

    move-result v0

    return v0
.end method

.method public final a(Leg;)V
    .locals 2

    iget v0, p0, LdI;->f:I

    sget v1, LdR;->a:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0, p1}, LdT;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Leg;

    invoke-virtual {p0, p1}, LdX;->a(Leg;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0, p1}, Leg;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0, p1}, Leg;->a(Z)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0, p1}, LdW;->a(Lec;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0}, LdT;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, LdT;

    invoke-interface {v0}, LdT;->g()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, LdX;->a:Led;

    check-cast v0, Lec;

    check-cast v0, Leg;

    invoke-interface {v0}, Leg;->h()Z

    move-result v0

    return v0
.end method
