.class public interface abstract LeF;
.super Ljava/lang/Object;


# static fields
.field public static final a:LeF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LeG;

    invoke-direct {v0}, LeG;-><init>()V

    sput-object v0, LeF;->a:LeF;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
