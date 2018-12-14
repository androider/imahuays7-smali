.class public Lorg/eclipse/jetty/http/HttpFields;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpFields$Field;,
        Lorg/eclipse/jetty/http/HttpFields$DateParser;,
        Lorg/eclipse/jetty/http/HttpFields$DateGenerator;
    }
.end annotation


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final MONTHS:[Ljava/lang/String;

.field public static final __01Jan1970:Ljava/lang/String;

.field public static final __01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final __01Jan1970_COOKIE:Ljava/lang/String;

.field public static final __COOKIE_DELIM:Ljava/lang/String; = "\"\\\n\r\t\u000c\u0008%+ ;="

.field public static final __GMT:Ljava/util/TimeZone;

.field private static __cache:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private static __cacheSize:I = 0x0

.field public static final __dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

.field private static final __dateGenerator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/http/HttpFields$DateGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final __dateParser:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/http/HttpFields$DateParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final __dateReceiveFmt:[Ljava/lang/String;

.field private static final __one:Ljava/lang/Float;

.field private static final __qualities:Lorg/eclipse/jetty/util/StringMap;

.field public static final __separators:Ljava/lang/String; = ", \t"

.field private static final __zero:Ljava/lang/Float;


# instance fields
.field private final _fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final _names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 66
    const-class v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "GMT"

    .line 70
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    .line 71
    new-instance v0, Lorg/eclipse/jetty/io/BufferDateCache;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferDateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferDateCache;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v0, 0x8

    .line 84
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Sat"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Sun"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Mon"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Tue"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Wed"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "Thu"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "Fri"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "Sat"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;

    const/16 v1, 0xd

    .line 86
    new-array v2, v1, [Ljava/lang/String;

    const-string v11, "Jan"

    aput-object v11, v2, v3

    const-string v11, "Feb"

    aput-object v11, v2, v4

    const-string v11, "Mar"

    aput-object v11, v2, v5

    const-string v11, "Apr"

    aput-object v11, v2, v6

    const-string v11, "May"

    aput-object v11, v2, v7

    const-string v11, "Jun"

    aput-object v11, v2, v8

    const-string v11, "Jul"

    aput-object v11, v2, v9

    const-string v11, "Aug"

    aput-object v11, v2, v10

    const-string v11, "Sep"

    aput-object v11, v2, v0

    const-string v11, "Oct"

    const/16 v12, 0x9

    aput-object v11, v2, v12

    const-string v11, "Nov"

    const/16 v13, 0xa

    aput-object v11, v2, v13

    const-string v11, "Dec"

    const/16 v14, 0xb

    aput-object v11, v2, v14

    const-string v11, "Jan"

    const/16 v15, 0xc

    aput-object v11, v2, v15

    sput-object v2, Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;

    .line 178
    new-instance v2, Lorg/eclipse/jetty/http/HttpFields$1;

    invoke-direct {v2}, Lorg/eclipse/jetty/http/HttpFields$1;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    const/16 v2, 0x16

    .line 217
    new-array v2, v2, [Ljava/lang/String;

    const-string v11, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v11, v2, v3

    const-string v3, "EEE, dd-MMM-yy HH:mm:ss"

    aput-object v3, v2, v4

    const-string v3, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v3, v2, v5

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss"

    aput-object v3, v2, v6

    const-string v3, "EEE dd MMM yyyy HH:mm:ss zzz"

    aput-object v3, v2, v7

    const-string v3, "EEE dd MMM yyyy HH:mm:ss"

    aput-object v3, v2, v8

    const-string v3, "EEE MMM dd yyyy HH:mm:ss zzz"

    aput-object v3, v2, v9

    const-string v3, "EEE MMM dd yyyy HH:mm:ss"

    aput-object v3, v2, v10

    const-string v3, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    aput-object v3, v2, v0

    const-string v0, "EEE MMM-dd-yyyy HH:mm:ss"

    aput-object v0, v2, v12

    const-string v0, "dd MMM yyyy HH:mm:ss zzz"

    aput-object v0, v2, v13

    const-string v0, "dd MMM yyyy HH:mm:ss"

    aput-object v0, v2, v14

    const-string v0, "dd-MMM-yy HH:mm:ss zzz"

    aput-object v0, v2, v15

    const-string v0, "dd-MMM-yy HH:mm:ss"

    aput-object v0, v2, v1

    const-string v0, "MMM dd HH:mm:ss yyyy zzz"

    const/16 v1, 0xe

    aput-object v0, v2, v1

    const-string v0, "MMM dd HH:mm:ss yyyy"

    const/16 v1, 0xf

    aput-object v0, v2, v1

    const-string v0, "EEE MMM dd HH:mm:ss yyyy zzz"

    const/16 v1, 0x10

    aput-object v0, v2, v1

    const-string v0, "EEE, MMM dd HH:mm:ss yyyy zzz"

    const/16 v1, 0x11

    aput-object v0, v2, v1

    const-string v0, "EEE, MMM dd HH:mm:ss yyyy"

    const/16 v1, 0x12

    aput-object v0, v2, v1

    const-string v0, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const/16 v1, 0x13

    aput-object v0, v2, v1

    const-string v0, "EEE dd-MMM-yy HH:mm:ss zzz"

    const/16 v1, 0x14

    aput-object v0, v2, v1

    const-string v0, "EEE dd-MMM-yy HH:mm:ss"

    const/16 v1, 0x15

    aput-object v0, v2, v1

    sput-object v2, Lorg/eclipse/jetty/http/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    .line 286
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    const-wide/16 v0, 0x0

    .line 296
    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    .line 297
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 298
    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "org.eclipse.jetty.http.HttpFields.CACHE"

    const/16 v1, 0x7d0

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    .line 1173
    new-instance v0, Ljava/lang/Float;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    .line 1174
    new-instance v0, Ljava/lang/Float;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1175
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    .line 1178
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.9"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.9"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.8"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.8"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.7"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.7"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.66"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.66"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.6"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.6"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.5"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.5"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.4"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.4"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.33"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.33"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.3"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.3"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.2"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.2"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.1"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.1"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    return-object v0
.end method

.method private convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .line 319
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    return-object v0

    .line 325
    :cond_0
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget v1, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    if-lez v1, :cond_2

    .line 329
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    sget v2, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    if-le v1, v2, :cond_1

    .line 330
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 331
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static formatCookieDate(J)Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCookieDate(Ljava/lang/StringBuilder;J)V
    .locals 1

    .line 202
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->formatDate(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2

    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object p1
.end method

.method private getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2

    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object p1
.end method

.method public static getQuality(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    if-nez p0, :cond_0

    .line 1199
    sget-object p0, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    return-object p0

    :cond_0
    const-string v0, ";"

    .line 1201
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-ltz v0, :cond_4

    .line 1202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 1204
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1207
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 1211
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1212
    invoke-static {p0, v0}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    const-string p0, "q"

    .line 1213
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1214
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3

    .line 1219
    :try_start_0
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    :catch_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    :cond_3
    :goto_0
    return-object v0

    .line 1202
    :cond_4
    :goto_1
    sget-object p0, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2

    .line 282
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateParser;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/http/HttpFields$DateParser;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static qualityList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 9

    if-eqz p0, :cond_6

    .line 1238
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 1244
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1246
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1247
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpFields;->getQuality(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 1249
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1

    .line 1251
    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1252
    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1256
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 1257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    return-object v0

    .line 1259
    :cond_3
    invoke-static {v1, p0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p0

    .line 1262
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    .line 1265
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 1266
    invoke-virtual {v1, v2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v1

    if-lez v1, :cond_4

    .line 1268
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    .line 1269
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1271
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1272
    invoke-interface {p0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    move v2, v3

    goto :goto_1

    .line 1279
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0

    .line 1238
    :cond_6
    :goto_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3b

    .line 1151
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 1153
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1155
    :cond_2
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v2, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1156
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1158
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1159
    new-instance v5, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v6, "= "

    invoke-direct {v5, v4, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1162
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1164
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    .line 1165
    :goto_1
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1169
    :cond_5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 701
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 702
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 703
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public add(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1122
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1123
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1127
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1128
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 718
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 720
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 722
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 724
    instance-of v0, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->hasKnownValues(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 726
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 733
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    .line 737
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 738
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_4

    .line 742
    invoke-static {v2, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$702(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    goto :goto_1

    .line 744
    :cond_4
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public addDateField(Ljava/lang/String;J)V
    .locals 0

    .line 917
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    .line 918
    sget-object p3, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {p3, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 919
    new-instance p3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p3, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public addLongField(Ljava/lang/String;J)V
    .locals 1

    .line 863
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 864
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public addLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 0

    .line 877
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 878
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    const-string v8, "\"\\\n\r\t\u000c\u0008%+ ;="

    if-eqz v1, :cond_13

    .line 970
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_8

    .line 974
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    invoke-static {v9, v1, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0x3d

    .line 977
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 982
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 983
    invoke-static {v9, v2, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    if-eqz v7, :cond_2

    .line 985
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ";Comment="

    .line 987
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-static {v9, v7, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 v2, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 991
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    const-string v10, ";Path="

    .line 994
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 996
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 998
    :cond_3
    invoke-static {v9, v4, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 1000
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    const-string v7, ";Domain="

    .line 1003
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v7, 0x1

    :cond_5
    const-wide/16 v11, 0x0

    cmp-long v2, v5, v11

    if-ltz v2, :cond_7

    const-string v2, ";Expires="

    .line 1010
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v5, v11

    if-nez v2, :cond_6

    .line 1012
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1014
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v13, v13, v5

    add-long v2, v11, v13

    invoke-static {v9, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    :goto_2
    if-lez p10, :cond_7

    const-string v2, ";Max-Age="

    .line 1018
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz p8, :cond_8

    const-string v2, ";Secure"

    .line 1024
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p9, :cond_9

    const-string v2, ";HttpOnly"

    .line 1026
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Set-Cookie"

    .line 1031
    invoke-direct {v0, v3}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    :goto_3
    if-eqz v3, :cond_12

    .line 1035
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    if-nez v8, :cond_a

    move-object v8, v5

    goto :goto_4

    :cond_a
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_10

    .line 1036
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-nez v7, :cond_c

    const-string v9, "Domain"

    .line 1039
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    move-object/from16 v11, p3

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz v7, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Domain="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    :goto_6
    if-nez v10, :cond_d

    const-string v9, "Path"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    if-eqz v10, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Path="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1042
    :cond_e
    iget-object v1, v0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v6, :cond_f

    .line 1044
    iget-object v1, v0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1046
    :cond_f
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$702(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    goto :goto_7

    :cond_10
    move-object/from16 v11, p3

    .line 1051
    :cond_11
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v6

    move-object v15, v6

    move-object v6, v3

    move-object v3, v15

    goto/16 :goto_3

    .line 1054
    :cond_12
    :goto_7
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v3, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1057
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->EXPIRES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void

    .line 971
    :cond_13
    :goto_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad cookie name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 11

    .line 931
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getMaxAge()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isSecure()Z

    move-result v8

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isHttpOnly()Z

    move-result v9

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getVersion()I

    move-result v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1108
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 456
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getDateField(Ljava/lang/String;)J
    .locals 5

    .line 813
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 817
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-wide v0

    .line 821
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/HttpFields$DateParser;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpFields$DateParser;->parse(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-wide v2
.end method

.method public getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object p1
.end method

.method public getFieldNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields$3;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/http/HttpFields$3;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getFieldNamesCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v2, :cond_0

    .line 355
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$500(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLongField(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 786
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLongField(Lorg/eclipse/jetty/io/Buffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 800
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 496
    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 499
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$4;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields$4;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    return-object v0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 568
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$6;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V

    return-object v0
.end method

.method public getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 531
    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$5;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields$5;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    return-object v0
.end method

.method public getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 473
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 610
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 611
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 662
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 667
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 669
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 671
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 675
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 677
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 678
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 679
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 682
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    :cond_3
    return-void

    .line 664
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V
    .locals 1

    .line 624
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 625
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 626
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .line 638
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    if-nez p2, :cond_0

    return-void

    .line 642
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1

    .line 643
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 644
    :cond_1
    instance-of v0, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2

    .line 645
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 648
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 649
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDateField(Ljava/lang/String;J)V
    .locals 1

    .line 904
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    return-void
.end method

.method public putDateField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 0

    .line 890
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    .line 891
    new-instance p3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p3, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public putLongField(Ljava/lang/String;J)V
    .locals 1

    .line 849
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 850
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 851
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public putLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 0

    .line 836
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 837
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public putTo(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1063
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1065
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v1, :cond_0

    .line 1067
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->putCRLF(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 755
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public remove(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .line 766
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_0

    .line 767
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/HttpFields$Field;

    :goto_0
    if-eqz p1, :cond_1

    .line 771
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1077
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1078
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1080
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v2, :cond_2

    .line 1083
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1084
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, ": "

    .line 1085
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1086
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1087
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v2, "\r\n"

    .line 1088
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "\r\n"

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1096
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
