.class public Lcom/umeng/message/a/a/a/b;
.super Ljava/lang/Object;
.source "JUtrack.java"

# interfaces
.implements Lcom/umeng/message/a/b/b;


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    sput-object p1, Lcom/umeng/commonsdk/stateless/a;->a:Landroid/content/Context;

    .line 89
    new-instance p1, Lcom/umeng/commonsdk/stateless/a;

    invoke-direct {p1}, Lcom/umeng/commonsdk/stateless/a;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "header"

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "din"

    .line 92
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p_sdk_v"

    const-string v3, "4.2.0"

    .line 93
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_switch"

    .line 94
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/a/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    .line 95
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device_token"

    .line 97
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "push"

    .line 99
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/b/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    const-string v3, "umpx_push_launch"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "exception"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/message/b/h;->a(J)V

    .line 106
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    const-string v0, "launch_policy"

    const-string v1, "-1"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 107
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/a/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch_policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    const-string v1, "tag_policy"

    const-string v3, "-1"

    .line 110
    invoke-static {v0, v1, v3}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v1, Lcom/umeng/message/a/a/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag_policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V

    if-lez p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p1}, Lcom/umeng/message/d;->a(I)V

    :cond_0
    if-lez v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v0}, Lcom/umeng/message/d;->b(I)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "jsonHeader"

    .line 124
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "jsonBody"

    .line 125
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.umeng.message.message.sendmessage.action"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_UMPX_PATH"

    const-string v2, "umpx_push_launch"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_SENDMESSAGE"

    .line 130
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/stateless/a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/stateless/a;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "header"

    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "din"

    .line 49
    iget-object v4, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "p_sdk_v"

    const-string v4, "4.2.0"

    .line 50
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "push_switch"

    .line 51
    iget-object v4, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/a/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    .line 52
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ts"

    const-string v4, "ts"

    .line 54
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "pa"

    const-string v4, "pa"

    .line 55
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_token"

    .line 56
    iget-object v4, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msg_id"

    const-string v4, "msg_id"

    .line 57
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "action_type"

    const-string v4, "action_type"

    .line 58
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 60
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "push"

    .line 62
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/b/e;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    const-string v3, "umpx_push_logs"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "exception"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/umeng/message/b/h;->a(Ljava/lang/String;I)Z

    if-eqz p3, :cond_1

    .line 68
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/umeng/message/b/h;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "jsonHeader"

    .line 73
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "jsonBody"

    .line 74
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msgId"

    .line 75
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "actionType"

    .line 76
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 78
    iget-object p3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.umeng.message.message.sendmessage.action"

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "KEY_UMPX_PATH"

    const-string v0, "umpx_push_logs"

    .line 80
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "KEY_SENDMESSAGE"

    .line 81
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    sput-object p1, Lcom/umeng/commonsdk/stateless/a;->a:Landroid/content/Context;

    .line 210
    new-instance p1, Lcom/umeng/commonsdk/stateless/a;

    invoke-direct {p1}, Lcom/umeng/commonsdk/stateless/a;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "header"

    .line 212
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "din"

    .line 213
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p_sdk_v"

    const-string v3, "4.2.0"

    .line 214
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_switch"

    .line 215
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/a/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    .line 216
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device_token"

    .line 218
    iget-object v3, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "push"

    .line 220
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/b/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    const-string v3, "umpx_push_register"

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/umeng/commonsdk/stateless/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "exception"

    .line 223
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/umeng/message/d;->a(Z)V

    .line 225
    iget-object p1, p0, Lcom/umeng/message/a/a/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/message/d;->v()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/a/a/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "setRegisteredToUmeng: device token\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
