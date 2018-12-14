.class public Lcom/mh/movie/core/mvp/ui/b;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo; = null

.field public static D:J = 0x0L

.field public static E:Ljava/lang/String; = ""

.field public static F:Ljava/lang/String; = ""

.field public static G:Ljava/lang/String; = ""

.field public static H:I = 0x14

.field public static I:Ljava/lang/String; = null

.field public static J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse; = null

.field public static K:Ljava/lang/Integer; = null

.field public static L:Ljava/lang/Integer; = null

.field public static M:Ljava/lang/Integer; = null

.field public static N:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static O:Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse; = null

.field public static P:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Q:[Ljava/lang/String; = null

.field public static R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig; = null

.field public static S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse; = null

.field public static a:Z = false

.field public static b:J = 0x0L

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Ljava/lang/String; = "mahua_crash.txt"

.field public static f:Ljava/lang/String; = "login_userinfo"

.field public static g:Ljava/lang/String; = "login_token"

.field public static h:Ljava/lang/String; = "login_uid"

.field public static i:Ljava/lang/String; = "key_islogin"

.field public static j:Z = true

.field public static k:Z = true

.field public static l:Ljava/lang/String; = "sharedPreferencesUid"

.field public static m:Ljava/lang/String; = "auth_token"

.field public static n:Ljava/lang/String; = "auth_timestamp"

.field public static o:Ljava/lang/String; = "auth_sign"

.field public static p:Ljava/lang/String; = "skipfeatures"

.field public static q:Ljava/lang/String; = "splash_ad_list"

.field public static r:Ljava/lang/String; = "settingConfigFeatures"

.field public static s:Ljava/lang/String; = "saveInvitation"

.field public static t:Ljava/lang/String; = "notice_start_time"

.field public static u:Ljava/lang/String; = "app_list"

.field public static v:Ljava/lang/String; = ""

.field public static w:Ljava/lang/String; = "splash_ad_index"

.field public static x:Ljava/lang/String; = null

.field public static y:Z = false

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    const/4 v0, 0x4

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    const/4 v0, 0x5

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->L:Ljava/lang/Integer;

    const/4 v0, 0x6

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->M:Ljava/lang/Integer;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->P:Ljava/util/Map;

    .line 122
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->P:Ljava/util/Map;

    const-string v1, "3"

    const-string v2, "b70e7747d3556d7166f21a48974db81f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->P:Ljava/util/Map;

    const-string v1, "53"

    const-string v2, "3ace1781571b766ad65c6d7eecc285db"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 126
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ver2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->Q:[Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    .line 182
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    return-void
.end method

.method public static a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;
    .locals 2

    const/4 v0, 0x0

    .line 232
    :goto_0
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getType()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 234
    sget-object p0, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toKen === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 175
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 176
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->r:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 208
    sput-wide p1, Lcom/mh/movie/core/mvp/ui/b;->D:J

    .line 209
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->l:Ljava/lang/String;

    sget-wide v0, Lcom/mh/movie/core/mvp/ui/b;->D:J

    invoke-static {p0, p1, v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 215
    sput-object p1, Lcom/mh/movie/core/mvp/ui/b;->E:Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->m:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V
    .locals 0

    .line 253
    sput-object p0, Lcom/mh/movie/core/mvp/ui/b;->O:Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;)V
    .locals 0

    .line 185
    sput-object p0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toKen === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    monitor-enter v0

    .line 201
    :try_start_0
    sput-object p0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    .line 202
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p0

    const-string v1, ""

    const-string v2, "updateUserInfo"

    invoke-virtual {p0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;",
            ">;)V"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    monitor-enter v0

    .line 227
    :try_start_0
    sput-object p0, Lcom/mh/movie/core/mvp/ui/b;->N:Ljava/util/List;

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Z)V
    .locals 0

    .line 38
    sput-boolean p0, Lcom/mh/movie/core/mvp/ui/b;->a:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 248
    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sput-object p1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->s:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
