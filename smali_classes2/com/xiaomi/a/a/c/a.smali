.class public Lcom/xiaomi/a/a/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static e:Z = false

.field public static final f:Z

.field public static final g:Z

.field private static h:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "2A2FE0D7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->a:Z

    sget-boolean v0, Lcom/xiaomi/a/a/c/a;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "DEBUG"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->b:Z

    const-string v0, "LOGABLE"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->c:Z

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->d:Z

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->e:Z

    const-string v0, "BETA"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/c/a;->f:Z

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    if-eqz v0, :cond_2

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    sput-boolean v1, Lcom/xiaomi/a/a/c/a;->g:Z

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_2
    sput v0, Lcom/xiaomi/a/a/c/a;->h:I

    return-void

    :cond_3
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    sput v2, Lcom/xiaomi/a/a/c/a;->h:I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/xiaomi/a/a/c/a;->h:I

    return v0
.end method
