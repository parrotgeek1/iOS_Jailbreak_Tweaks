.class public interface abstract LcM;
.super Ljava/lang/Object;


# static fields
.field public static final d:LcM;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LcN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LcN;-><init>(B)V

    sput-object v0, LcM;->d:LcM;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method
