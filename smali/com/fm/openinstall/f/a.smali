.class public Lcom/fm/openinstall/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "plat%sId"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "form"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fm/openinstall/f/a;->a:Ljava/lang/String;

    const-string v0, "we%sat"

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ch"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fm/openinstall/f/a;->b:Ljava/lang/String;

    const-string v0, "qz%s_m"

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "one"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fm/openinstall/f/a;->c:Ljava/lang/String;

    const-string v0, "-%s-%s-"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "openinstall"

    aput-object v5, v3, v4

    const-string v5, "pb"

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fm/openinstall/f/a;->d:Ljava/lang/String;

    const-string v0, "-%s-%s-"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "openinstall"

    aput-object v3, v2, v4

    const-string v3, "yyb"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fm/openinstall/f/a;->e:Ljava/lang/String;

    return-void
.end method
