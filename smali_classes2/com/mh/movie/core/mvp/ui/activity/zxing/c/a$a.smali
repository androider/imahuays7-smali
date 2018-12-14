.class final enum Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

.field public static final enum b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

.field public static final enum c:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

.field private static final synthetic d:[Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    const/4 v0, 0x3

    .line 106
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->d:[Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;
    .locals 1

    .line 106
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;
    .locals 1

    .line 106
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->d:[Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    return-object v0
.end method
