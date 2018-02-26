.class final Lp;
.super Ljava/lang/Object;

# interfaces
.implements Leu;


# instance fields
.field private final a:LF;

.field private final b:LB;


# direct methods
.method constructor <init>(LF;LB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp;->a:LF;

    iput-object p2, p0, Lp;->b:LB;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v2, p0, Lp;->b:LB;

    const-wide/32 v6, 0xf4240

    iget-object v3, v2, LB;->b:Lem;

    iget-object v8, v3, Lem;->b:Lei;

    iget v3, v3, Lem;->a:I

    invoke-interface {v8, v3}, Lei;->a(I)J

    move-result-wide v8

    mul-long/2addr v6, v8

    iget-wide v2, v2, LB;->a:J

    sub-long v2, v4, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lp;->a:LF;

    invoke-virtual {v2, p1}, LF;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lp;->b:LB;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, LB;->a:J

    iget-object v2, v1, LB;->b:Lem;

    new-instance v3, Lem;

    iget-object v4, v2, Lem;->b:Lei;

    iget-object v2, v2, Lem;->c:Lel;

    invoke-direct {v3, v4, v2}, Lem;-><init>(Lei;Lel;)V

    iput-object v3, v1, LB;->b:Lem;

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp;->b:LB;

    iput-wide v4, v0, LB;->a:J

    iget-object v2, v0, LB;->b:Lem;

    new-instance v3, Lem;

    iget v4, v2, Lem;->a:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v2, Lem;->b:Lei;

    iget-object v2, v2, Lem;->c:Lel;

    invoke-direct {v3, v4, v5, v2}, Lem;-><init>(ILei;Lel;)V

    iput-object v3, v0, LB;->b:Lem;

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method
