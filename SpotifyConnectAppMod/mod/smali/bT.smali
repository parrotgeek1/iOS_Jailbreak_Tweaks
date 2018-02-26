.class final LbT;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LbJ;

.field private static final b:[LbO;

.field private static final c:[LbP;


# instance fields
.field private final d:LbS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [LbJ;

    sput-object v0, LbT;->a:[LbJ;

    new-array v0, v1, [LbO;

    sput-object v0, LbT;->b:[LbO;

    new-array v0, v1, [LbP;

    sput-object v0, LbT;->c:[LbP;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, LbX;

    invoke-direct {v0}, LbX;-><init>()V

    invoke-direct {p0, v0}, LbT;-><init>(LbS;)V

    return-void
.end method

.method private constructor <init>(LbS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbT;->d:LbS;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)LbL;
    .locals 13

    const-string v0, "orientation"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "total_physical_memory"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "total_internal_storage"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "available_physical_memory"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "available_internal_storage"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "battery_velocity"

    const/4 v11, 0x1

    invoke-virtual {p0, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "proximity_enabled"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    new-instance v0, LbL;

    invoke-direct/range {v0 .. v12}, LbL;-><init>(IJJJJIIZ)V

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, LbR;->f()LbR;

    move-result-object v0

    iget-object v0, v0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "JsonCrashDataParser"

    const-string v3, "Error getting ApplicationInfo"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[LbK;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [LbK;

    const/4 v1, 0x0

    new-instance v2, LbK;

    const-string v3, "json_session"

    invoke-direct {v2, v3, p0}, LbK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;I)[LbP;
    .locals 10

    const-string v0, "frames"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v0, LbT;->c:[LbP;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [LbP;

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_0

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "symbol"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    new-instance v1, LbP;

    const-string v5, ""

    move v6, p1

    invoke-direct/range {v1 .. v6}, LbP;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v7

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)LbN;
    .locals 5

    const-string v0, "sig_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig_code"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "si_addr"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, LbN;

    invoke-direct {v4, v0, v1, v2, v3}, LbN;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method public static d(Lorg/json/JSONObject;)[LbO;
    .locals 9

    const/4 v1, 0x0

    const-string v0, "threads"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v0, LbT;->b:[LbO;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v2, v5, [LbO;

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "crashed"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_2
    new-instance v8, LbO;

    invoke-static {v6, v0}, LbT;->a(Lorg/json/JSONObject;I)[LbP;

    move-result-object v6

    invoke-direct {v8, v7, v0, v6}, LbO;-><init>(Ljava/lang/String;I[LbP;)V

    aput-object v8, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final c(Lorg/json/JSONObject;)[LbJ;
    .locals 11

    const-string v0, "maps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v0, LbT;->a:[LbJ;

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LbW;->a(Ljava/lang/String;)LbV;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v6, v10, LbV;->c:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, LbT;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, LbT;->d:LbS;

    invoke-interface {v2, v1}, LbS;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, LbJ;

    iget-wide v2, v10, LbV;->a:J

    iget-wide v4, v10, LbV;->b:J

    invoke-direct/range {v1 .. v7}, LbJ;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not generate ID for file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, LbV;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LbJ;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LbJ;

    goto :goto_0
.end method
