.class public final LaD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;

.field static final c:Ljava/util/Comparator;

.field static final d:Ljava/io/FilenameFilter;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/Map;

.field private static final j:[Ljava/lang/String;


# instance fields
.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lav;

.field final g:Lah;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final m:LeO;

.field private final n:Ldw;

.field private final o:Lbc;

.field private final p:LaW;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LaE;

    invoke-direct {v0}, LaE;-><init>()V

    sput-object v0, LaD;->a:Ljava/io/FilenameFilter;

    new-instance v0, LaJ;

    invoke-direct {v0}, LaJ;-><init>()V

    sput-object v0, LaD;->b:Ljava/util/Comparator;

    new-instance v0, LaK;

    invoke-direct {v0}, LaK;-><init>()V

    sput-object v0, LaD;->c:Ljava/util/Comparator;

    new-instance v0, LaL;

    invoke-direct {v0}, LaL;-><init>()V

    sput-object v0, LaD;->d:Ljava/io/FilenameFilter;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LaD;->h:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LaD;->i:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, LaD;->j:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lav;Ldw;LbE;LeO;Lah;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LaD;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, LaD;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, LaD;->f:Lav;

    iput-object p3, p0, LaD;->n:Ldw;

    iput-object p6, p0, LaD;->g:Lah;

    invoke-interface {p4}, LbE;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaD;->q:Ljava/lang/String;

    iput-object p5, p0, LaD;->m:LeO;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p6, LcQ;->p:Landroid/content/Context;

    new-instance v1, Lbc;

    invoke-direct {v1, v0, p5}, Lbc;-><init>(Landroid/content/Context;LeO;)V

    iput-object v1, p0, LaD;->o:Lbc;

    new-instance v1, LaW;

    invoke-direct {v1, v0}, LaW;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LaD;->p:LaW;

    return-void
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaD;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, LaD;->h:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic a(LaD;LbM;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v0}, Lah;->a(Ljava/lang/String;)V

    new-instance v2, Lad;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionCrash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v1

    new-instance v3, Lbf;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lbf;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Lbf;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lbc;

    iget-object v5, p0, LaD;->g:Lah;

    iget-object v5, v5, LcQ;->p:Landroid/content/Context;

    iget-object v6, p0, LaD;->m:LeO;

    invoke-direct {v4, v5, v6, v0}, Lbc;-><init>(Landroid/content/Context;LeO;Ljava/lang/String;)V

    invoke-static {p1, v4, v3, v1}, Lbh;->a(LbM;Lbc;Ljava/util/Map;Laf;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, LaD;->g:Lah;

    iget-object v0, v0, Lah;->b:Lay;

    invoke-virtual {v0}, Lay;->a()Z

    :try_start_0
    invoke-direct {p0}, LaD;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaD;->a(Z)V

    invoke-direct {p0}, LaD;->d()V

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v0

    sget-object v1, LaD;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, LaD;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, LbG;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    iget-object v0, p0, LaD;->g:Lah;

    invoke-virtual {v0}, Lah;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, LaD;->f()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Lah;->a(Ljava/lang/String;)V

    new-instance v6, Lad;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v1

    const-string v5, "crash"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LaD;->a(Laf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v6, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_1
.end method

.method private static a(Laf;Ljava/io/File;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, p0, v0}, LaD;->a(Ljava/io/InputStream;Laf;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Laf;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    sget-object v2, LaD;->j:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, LaQ;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LaQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, LcG;->a()LcT;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Collecting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " data for session ID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v1

    invoke-static {p1, v4}, LaD;->a(Laf;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Laf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->g:Lah;

    iget-object v7, v2, LcQ;->p:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    invoke-static {v7}, Ldk;->c(Landroid/content/Context;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->p:LaW;

    iget-boolean v2, v2, LaW;->e:Z

    invoke-static {v7, v2}, Ldk;->a(Landroid/content/Context;Z)I

    move-result v18

    invoke-static {v7}, Ldk;->d(Landroid/content/Context;)Z

    move-result v19

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Ldk;->b()J

    move-result-wide v8

    invoke-static {v7}, Ldk;->b(Landroid/content/Context;)J

    move-result-wide v10

    sub-long v20, v8, v10

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldk;->b(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ldk;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->g:Lah;

    iget-object v0, v2, Lah;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->n:Ldw;

    iget-object v15, v2, Ldw;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v6, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v9, v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    :cond_0
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v7, v2, v5}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, LaD;->o:Lbc;

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, LbC;->a(Laf;JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lbc;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;FIZJJ)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->g:Lah;

    iget-object v2, v2, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    move-object v11, v2

    goto :goto_1
.end method

.method private static a(Laf;[Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Ldk;->a:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    :try_start_0
    invoke-static {}, LcG;->a()LcT;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Found Non Fatal for session ID %s in %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0, v0}, LaD;->a(Laf;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;Laf;I)V
    .locals 6

    const/4 v1, 0x0

    new-array v2, p2, [B

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    array-length v0, v2

    iget v3, p1, Laf;->b:I

    iget v4, p1, Laf;->c:I

    sub-int/2addr v3, v4

    if-lt v3, v0, :cond_1

    iget-object v3, p1, Laf;->a:[B

    iget v4, p1, Laf;->c:I

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Laf;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Laf;->c:I

    :goto_1
    return-void

    :cond_1
    iget v3, p1, Laf;->b:I

    iget v4, p1, Laf;->c:I

    sub-int/2addr v3, v4

    iget-object v4, p1, Laf;->a:[B

    iget v5, p1, Laf;->c:I

    invoke-static {v2, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x0

    sub-int/2addr v0, v3

    iget v3, p1, Laf;->b:I

    iput v3, p1, Laf;->c:I

    invoke-virtual {p1}, Laf;->b()V

    iget v3, p1, Laf;->b:I

    if-gt v0, v3, :cond_2

    iget-object v3, p1, Laf;->a:[B

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p1, Laf;->c:I

    goto :goto_1

    :cond_2
    iget-object v1, p1, Laf;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, LaS;

    invoke-direct {v0, p1}, LaS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v3, v0, 0x8

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v8, v6, v3

    invoke-static {v8}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, LaD;->o:Lbc;

    invoke-virtual {v3, v5}, Lbc;->a(Ljava/util/Set;)V

    new-instance v3, LaP;

    invoke-direct {v3, v2}, LaP;-><init>(B)V

    invoke-virtual {p0, v3}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, LaD;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, LcG;->a()LcT;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v9

    array-length v3, v9

    if-gt v3, v0, :cond_4

    invoke-static {}, LcG;->a()LcT;

    :goto_3
    return-void

    :cond_4
    aget-object v3, v9, v0

    invoke-static {v3}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v5, Lad;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SessionUser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v5}, Laf;->a(Ljava/io/OutputStream;)Laf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    iget-object v7, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v6, LbF;

    iget-object v7, p0, LaD;->g:Lah;

    iget-object v8, v7, LcQ;->r:Ldw;

    iget-boolean v8, v8, Ldw;->b:Z

    if-eqz v8, :cond_6

    iget-object v7, v7, Lah;->d:Ljava/lang/String;

    move-object v8, v7

    :goto_4
    iget-object v7, p0, LaD;->g:Lah;

    iget-object v10, v7, LcQ;->r:Ldw;

    iget-boolean v10, v10, Ldw;->b:Z

    if-eqz v10, :cond_7

    iget-object v7, v7, Lah;->f:Ljava/lang/String;

    :goto_5
    iget-object v10, p0, LaD;->g:Lah;

    iget-object v11, v10, LcQ;->r:Ldw;

    iget-boolean v11, v11, Ldw;->b:Z

    if-eqz v11, :cond_5

    iget-object v4, v10, Lah;->e:Ljava/lang/String;

    :cond_5
    invoke-direct {v6, v8, v7, v4}, LbF;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    :goto_6
    iget-object v6, v4, LbF;->b:Ljava/lang/String;

    if-nez v6, :cond_9

    iget-object v6, v4, LbF;->c:Ljava/lang/String;

    if-nez v6, :cond_9

    iget-object v6, v4, LbF;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v6, :cond_9

    :goto_7
    if-eqz v1, :cond_a

    const-string v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session user file."

    invoke-static {v5, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lah;->i()Lfh;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, LcG;->a()LcT;

    goto :goto_3

    :cond_6
    move-object v8, v4

    goto :goto_4

    :cond_7
    move-object v7, v4

    goto :goto_5

    :cond_8
    :try_start_3
    new-instance v4, Lbf;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7}, Lbf;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v6}, Lbf;->a(Ljava/lang/String;)LbF;

    move-result-object v4

    goto :goto_6

    :cond_9
    move v1, v2

    goto :goto_7

    :cond_a
    iget-object v1, v4, LbF;->b:Ljava/lang/String;

    iget-object v2, v4, LbF;->c:Ljava/lang/String;

    iget-object v4, v4, LbF;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, LbC;->a(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session user file."

    invoke-static {v5, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_9
    :try_start_4
    invoke-static {v0, v4}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v5, v4

    :goto_a
    const-string v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session user file."

    invoke-static {v5, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v1, v1, Lfh;->c:I

    invoke-direct {p0, v9, v0, v1}, LaD;->a([Ljava/io/File;II)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v4, v5

    goto :goto_9
.end method

.method private a([Ljava/io/File;II)V
    .locals 12

    invoke-static {}, LcG;->a()LcT;

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_8

    aget-object v6, p1, p2

    invoke-static {v6}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, LcG;->a()LcT;

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, LaQ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionCrash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LaQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, LcG;->a()LcT;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Session %s has fatal exception: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, LaQ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionEvent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LaQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v1, v2

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-static {}, LcG;->a()LcT;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Session %s has non-fatal exceptions: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz v1, :cond_7

    :cond_0
    array-length v1, v2

    if-le v1, p3, :cond_9

    invoke-static {}, LcG;->a()LcT;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Trimming down to %d logged exceptions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v1

    new-instance v2, LaQ;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, LaQ;-><init>(Ljava/lang/String;)V

    sget-object v4, LaD;->c:Ljava/util/Comparator;

    invoke-static {v1, v2, p3, v4}, LbG;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    new-instance v1, LaQ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionEvent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LaQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    move-object v5, v1

    :goto_3
    if-eqz v0, :cond_5

    const/4 v0, 0x0

    aget-object v0, v3, v0

    move-object v4, v0

    :goto_4
    if-eqz v4, :cond_6

    const/4 v0, 0x1

    :goto_5
    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lad;

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v7}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v1

    invoke-static {}, LcG;->a()LcT;

    invoke-static {v1, v6}, LaD;->a(Laf;Ljava/io/File;)V

    const/4 v3, 0x4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v1, v3, v8, v9}, Laf;->a(IJ)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, Laf;->a(IZ)V

    invoke-direct {p0, v1, v7}, LaD;->a(Laf;Ljava/lang/String;)V

    invoke-static {v1, v5, v7}, LaD;->a(Laf;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {v1, v4}, LaD;->a(Laf;Ljava/io/File;)V

    :cond_1
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Laf;->a(II)V

    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Laf;->b(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_2
    :goto_6
    invoke-static {}, LcG;->a()LcT;

    invoke-direct {p0, v7}, LaD;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_7
    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to write session file for session ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lad;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_8
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {}, LcG;->a()LcT;

    goto :goto_6

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_9
    move-object v5, v2

    goto/16 :goto_3
.end method

.method static synthetic a(LaD;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p0, p1}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(LaD;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, LaD;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, LaD;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(LaD;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, LaD;->e()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, LaD;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 20

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Lac;

    move-object/from16 v0, p0

    iget-object v4, v0, LaD;->n:Ldw;

    invoke-direct {v3, v4}, Lac;-><init>(Ldw;)V

    invoke-virtual {v3}, Lac;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, LcG;->a()LcT;

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lad;

    invoke-direct/range {p0 .. p0}, LaD;->g()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BeginSession"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    invoke-static {v4}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Crashlytics Android SDK/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "2.3.8.97"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-object/from16 v0, v18

    invoke-static {v3, v0, v5, v6, v7}, LbC;->a(Laf;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "Failed to flush to session begin file."

    invoke-static {v3, v2}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close begin session file."

    invoke-static {v4, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v10, Lad;

    invoke-direct/range {p0 .. p0}, LaD;->g()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v2, v5}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-static {v10}, Laf;->a(Ljava/io/OutputStream;)Laf;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-result-object v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, LaD;->n:Ldw;

    iget-object v3, v3, Ldw;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, LaD;->g:Lah;

    iget-object v4, v4, Lah;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, LaD;->g:Lah;

    iget-object v5, v5, Lah;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, LaD;->g:Lah;

    iget-object v6, v6, Lah;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, LaD;->n:Ldw;

    invoke-virtual {v7}, Ldw;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, LaD;->g:Lah;

    iget-object v8, v8, Lah;->i:Ljava/lang/String;

    invoke-static {v8}, Ldq;->a(Ljava/lang/String;)Ldq;

    move-result-object v8

    iget v8, v8, Ldq;->e:I

    move-object/from16 v0, p0

    iget-object v9, v0, LaD;->q:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, LbC;->a(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const-string v3, "Failed to flush to session app file."

    invoke-static {v2, v3}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session app file."

    invoke-static {v10, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Lad;

    invoke-direct/range {p0 .. p0}, LaD;->g()Ljava/io/File;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SessionOS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-static {v4}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->g:Lah;

    iget-object v2, v2, LcQ;->p:Landroid/content/Context;

    invoke-static {v2}, Ldk;->g(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v3, v2}, LbC;->a(Laf;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v2, "Failed to flush to session OS file."

    invoke-static {v3, v2}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session OS file."

    invoke-static {v4, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_7
    new-instance v17, Lad;

    invoke-direct/range {p0 .. p0}, LaD;->g()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lad;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static/range {v17 .. v17}, Laf;->a(Ljava/io/OutputStream;)Laf;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->g:Lah;

    iget-object v2, v2, LcQ;->p:Landroid/content/Context;

    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, LaD;->n:Ldw;

    const-string v4, ""

    iget-boolean v7, v5, Ldw;->a:Z

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ldw;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v5, Ldw;->c:Landroid/content/Context;

    invoke-static {v4}, Ldk;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v4, "crashlytics.installation.id"

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v5, v7}, Ldw;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {}, Ldk;->a()I

    move-result v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    invoke-static {}, Ldk;->b()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    invoke-static {v2}, Ldk;->f(Landroid/content/Context;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, LaD;->n:Ldw;

    invoke-virtual {v6}, Ldw;->c()Ljava/util/Map;

    move-result-object v13

    invoke-static {v2}, Ldk;->h(Landroid/content/Context;)I

    move-result v14

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, LbC;->a(Laf;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const-string v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, LaD;->o:Lbc;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lbc;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_0
    :try_start_9
    invoke-static {v2, v4}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v2

    :goto_1
    const-string v5, "Failed to flush to session begin file."

    invoke-static {v3, v5}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close begin session file."

    invoke-static {v4, v3}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    :goto_2
    :try_start_a
    invoke-static {v2, v4}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v2

    move-object v10, v4

    :goto_3
    const-string v4, "Failed to flush to session app file."

    invoke-static {v3, v4}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close session app file."

    invoke-static {v10, v3}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    move-object v4, v5

    :goto_4
    :try_start_b
    invoke-static {v2, v4}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v2

    move-object v5, v4

    :goto_5
    const-string v4, "Failed to flush to session OS file."

    invoke-static {v3, v4}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close session OS file."

    invoke-static {v5, v3}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catch_3
    move-exception v2

    :goto_6
    :try_start_c
    invoke-static {v2, v4}, Lba;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v2

    move-object/from16 v17, v4

    :goto_7
    const-string v4, "Failed to flush session device info."

    invoke-static {v3, v4}, Ldk;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catchall_4
    move-exception v2

    move-object/from16 v17, v4

    goto :goto_7

    :catchall_5
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_6

    :catchall_6
    move-exception v2

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_4

    :catchall_7
    move-exception v2

    move-object v10, v4

    goto :goto_3

    :catchall_8
    move-exception v2

    goto :goto_3

    :catchall_9
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v4, v10

    goto :goto_2

    :catch_7
    move-exception v3

    move-object v4, v10

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, v19

    goto :goto_2

    :catchall_a
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catch_8
    move-exception v2

    goto :goto_0
.end method

.method static synthetic d(LaD;)V
    .locals 0

    invoke-direct {p0}, LaD;->d()V

    return-void
.end method

.method static synthetic e(LaD;)Lah;
    .locals 1

    iget-object v0, p0, LaD;->g:Lah;

    return-object v0
.end method

.method private e()[Ljava/io/File;
    .locals 2

    new-instance v0, LaQ;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, LaQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    sget-object v1, LaD;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private f()V
    .locals 7

    sget-object v0, LaD;->a:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, LaD;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, LaD;->f:Lav;

    new-instance v5, LaR;

    iget-object v6, p0, LaD;->g:Lah;

    invoke-direct {v5, v6, v3}, LaR;-><init>(Lah;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lav;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(LaD;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaD;->a(Z)V

    return-void
.end method

.method private g()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LaD;->m:LeO;

    invoke-interface {v0}, LeO;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-direct {p0}, LaD;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics is handling uncaught exception \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LaD;->p:LaW;

    iget-object v1, v0, LaW;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LaW;->b:Landroid/content/Context;

    iget-object v2, v0, LaW;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, LaW;->b:Landroid/content/Context;

    iget-object v0, v0, LaW;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, LaD;->f:Lav;

    new-instance v2, LaM;

    invoke-direct {v2, p0, v0, p1, p2}, LaM;-><init>(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lav;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    iget-object v0, p0, LaD;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, LcG;->a()LcT;

    iget-object v0, p0, LaD;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v0, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, LcG;->a()LcT;

    iget-object v1, p0, LaD;->l:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v1, p0, LaD;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
