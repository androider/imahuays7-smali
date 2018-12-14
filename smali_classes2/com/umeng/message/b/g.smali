.class public Lcom/umeng/message/b/g;
.super Ljava/lang/Object;
.source "UMLogPush.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u5230device token|\u6ce8\u518c\u4e0d\u6210\u529f\uff0c\u65e0\u6cd5\u83b7\u53d6\u5230device token\uff0c\u63d0\u793aaccs bind error\uff0c\u6216\u8005TNET_LOAD_SO_FAIL\u3002\u8be6\u89c1\u95ee\u9898\u94fe\u63a5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67080"

    invoke-static {v1}, Lcom/umeng/commonsdk/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/b/g;->a:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast\u63d0\u793a\u6ce8\u518c\u6709\u8bef|Toast\u63d0\u793amPushAgent.register should be called in both main process and channel process\u3002\u8be6\u89c1\u95ee\u9898\u94fe\u63a5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67140"

    invoke-static {v1}, Lcom/umeng/commonsdk/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/b/g;->b:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u663e\u793a\u9001\u8fbe\u5374\u6ca1\u6709\u5f39\u51fa\u901a\u77e5|\u540e\u53f0\u663e\u793a\u9001\u8fbe\uff0c\u5374\u6ca1\u6709\u5f39\u51fa\u901a\u77e5\u3002\u8be6\u89c1\u95ee\u9898\u94fe\u63a5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67146"

    invoke-static {v1}, Lcom/umeng/commonsdk/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/b/g;->c:Ljava/lang/String;

    return-void
.end method
