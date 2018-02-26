.class public abstract LcZ;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LcQ;

.field private final d:LeK;

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LcZ;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, LcZ;->b:LcQ;

    iput-object p2, p0, LcZ;->f:Ljava/lang/String;

    iget-object v0, p0, LcZ;->f:Ljava/lang/String;

    invoke-static {v0}, Ldk;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LcZ;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, LcZ;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    iput-object p3, p0, LcZ;->a:Ljava/lang/String;

    iput-object p4, p0, LcZ;->d:LeK;

    iput p5, p0, LcZ;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)LeC;
    .locals 4

    iget-object v0, p0, LcZ;->d:LeK;

    iget v1, p0, LcZ;->e:I

    iget-object v2, p0, LcZ;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, LeK;->a(ILjava/lang/String;Ljava/util/Map;)LeC;

    move-result-object v0

    invoke-virtual {v0}, LeC;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, LeC;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics Android SDK/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LcZ;->b:LcQ;

    invoke-virtual {v3}, LcQ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    return-object v0
.end method
