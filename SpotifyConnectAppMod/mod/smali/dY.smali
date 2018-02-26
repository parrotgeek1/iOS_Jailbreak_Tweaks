.class public final LdY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:LdX;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LdX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LdY;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LdY;->b:LdX;

    return-void
.end method

.method static synthetic a(LdY;)LdX;
    .locals 1

    iget-object v0, p0, LdY;->b:LdX;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, LdY;->a:Ljava/util/concurrent/Executor;

    new-instance v1, LdZ;

    invoke-direct {v1, p0, p1}, LdZ;-><init>(LdY;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
