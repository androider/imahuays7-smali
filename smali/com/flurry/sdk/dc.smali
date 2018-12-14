.class public final Lcom/flurry/sdk/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:I = 0x5

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/flurry/sdk/dc;->a:Z

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 54
    sput p0, Lcom/flurry/sdk/dc;->b:I

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/dc;->d(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/dc;->d(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 106
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 110
    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lcom/flurry/sdk/dc;->c:Z

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/flurry/sdk/dc;->a:Z

    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/flurry/sdk/dc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/sdk/dc;->b:I

    if-gt v0, p0, :cond_0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/dc;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 114
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 134
    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 43
    sget v0, Lcom/flurry/sdk/dc;->b:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 84
    sget-boolean v0, Lcom/flurry/sdk/dc;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FlurryAgent"

    .line 91
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    sub-int v2, v0, v1

    const/16 v3, 0xfa0

    if-le v3, v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit16 v2, v1, 0xfa0

    .line 94
    :goto_2
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 122
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    sget-boolean v0, Lcom/flurry/sdk/dc;->c:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/dc;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 130
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/flurry/sdk/dc;->c:Z

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 138
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/dc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
