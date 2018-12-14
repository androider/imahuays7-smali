.class final enum Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;
.super Ljava/lang/Enum;
.source "ApkDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

.field public static final enum b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

.field public static final enum c:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

.field public static final enum d:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

.field private static final synthetic e:[Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 39
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const-string v1, "FAILUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 40
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const-string v1, "DOWNLOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 41
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const-string v1, "FINISH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->e:[Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;
    .locals 1

    .line 37
    const-class v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;
    .locals 1

    .line 37
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->e:[Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    return-object v0
.end method
