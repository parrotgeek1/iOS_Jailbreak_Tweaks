.class final LdZ;
.super Leb;


# instance fields
.field final synthetic a:LdY;


# direct methods
.method constructor <init>(LdY;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, LdZ;->a:LdY;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Leb;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()LdT;
    .locals 1

    iget-object v0, p0, LdZ;->a:LdY;

    invoke-static {v0}, LdY;->a(LdY;)LdX;

    move-result-object v0

    return-object v0
.end method
