.class Lanet/channel/b/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/b/b;


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/b/c;->b:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/b/c;->c:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lanet/channel/b/c;->d:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lanet/channel/b/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lanet/channel/b/c;->a:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lanet/channel/statist/StatObject;)V
    .locals 14

    .line 59
    sget-boolean v0, Lanet/channel/b/c;->a:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    const-class v1, Lanet/channel/statist/e;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lanet/channel/statist/e;

    if-nez v1, :cond_1

    return-void

    .line 69
    :cond_1
    sget-object v2, Lanet/channel/b/c;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lanet/channel/b/c;->b(Ljava/lang/Class;)V

    .line 73
    :cond_2
    invoke-virtual {p1}, Lanet/channel/statist/StatObject;->beforeCommit()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v4

    .line 79
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    .line 80
    sget-object v6, Lanet/channel/b/c;->b:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x1

    .line 84
    invoke-static {v7}, Lanet/channel/h/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_4
    move-object v8, v3

    :goto_0
    if-eqz v6, :cond_8

    .line 89
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 90
    invoke-virtual {v9, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 91
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v10, :cond_5

    const-string v10, ""

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v4, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_1

    .line 93
    :cond_6
    sget-object v6, Lanet/channel/b/c;->c:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 94
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 95
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v8, :cond_7

    .line 97
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 101
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v6, 0x0

    .line 102
    :goto_4
    array-length v9, v0

    if-ge v6, v9, :cond_c

    .line 103
    aget-object v9, v0, v6

    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    const-class v10, Lanet/channel/statist/c;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 106
    invoke-virtual {v9, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 107
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v10, :cond_9

    const-string v10, ""

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v4, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_6

    .line 110
    :cond_a
    const-class v10, Lanet/channel/statist/d;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 111
    invoke-virtual {v9, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 112
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v5, v11, v12, v13}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v8, :cond_b

    .line 114
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 120
    :cond_c
    invoke-interface {v1}, Lanet/channel/statist/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lanet/channel/statist/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 122
    invoke-static {v7}, Lanet/channel/h/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "awcn.DefaultAppMonitor"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commit stat: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lanet/channel/statist/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "\nDimensions"

    aput-object v5, v1, v2

    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    const-string v5, "\nMeasures"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p1, v0, v3, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    const-string v0, "awcn.DefaultAppMonitor"

    const-string v1, "commit monitor point failed"

    .line 127
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, p1, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d
    :goto_7
    return-void

    :cond_e
    :goto_8
    return-void
.end method

.method public a(Lanet/channel/statist/a;)V
    .locals 4

    .line 133
    sget-boolean v0, Lanet/channel/b/c;->a:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    iget-object v0, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "awcn.DefaultAppMonitor"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_2
    iget-boolean v0, p1, Lanet/channel/statist/a;->a:Z

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/statist/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lanet/channel/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lanet/channel/statist/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lanet/channel/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lanet/channel/statist/a;->d:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    iget-object p1, p1, Lanet/channel/statist/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lanet/channel/statist/b;)V
    .locals 5

    .line 156
    sget-boolean v0, Lanet/channel/b/c;->a:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v0, p1, Lanet/channel/statist/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lanet/channel/statist/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 163
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "awcn.DefaultAppMonitor"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_2
    iget-object v0, p1, Lanet/channel/statist/b;->c:Ljava/lang/String;

    iget-object v1, p1, Lanet/channel/statist/b;->d:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/statist/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lanet/channel/h/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lanet/channel/statist/b;->b:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method declared-synchronized b(Ljava/lang/Class;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    monitor-enter p0

    if-eqz v1, :cond_7

    .line 171
    :try_start_0
    sget-boolean v2, Lanet/channel/b/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 176
    :cond_0
    :try_start_1
    sget-object v3, Lanet/channel/b/c;->d:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 177
    monitor-exit p0

    return-void

    .line 180
    :cond_1
    :try_start_2
    const-class v3, Lanet/channel/statist/e;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lanet/channel/statist/e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 182
    monitor-exit p0

    return-void

    .line 185
    :cond_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v7

    .line 190
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v8

    const/4 v9, 0x0

    .line 192
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_6

    .line 193
    aget-object v10, v4, v9

    .line 194
    const-class v11, Lanet/channel/statist/c;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lanet/channel/statist/c;

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 196
    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 201
    :cond_3
    const-class v11, Lanet/channel/statist/d;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lanet/channel/statist/d;

    if-eqz v11, :cond_5

    .line 203
    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v11}, Lanet/channel/statist/d;->c()D

    move-result-wide v12

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v16, v12, v14

    if-eqz v16, :cond_4

    .line 206
    new-instance v12, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11}, Lanet/channel/statist/d;->a()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v17, v3

    invoke-interface {v11}, Lanet/channel/statist/d;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v18, v4

    invoke-interface {v11}, Lanet/channel/statist/d;->c()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v12, v10, v13, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v8, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 209
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_0

    :cond_6
    move-object/from16 v17, v3

    .line 213
    sget-object v2, Lanet/channel/b/c;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v2, Lanet/channel/b/c;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    .line 215
    invoke-interface {v3}, Lanet/channel/statist/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lanet/channel/statist/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8, v7}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 216
    sget-object v2, Lanet/channel/b/c;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_4
    const-string v2, "awcn.DefaultAppMonitor"

    const-string v3, "register fail"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 219
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 170
    monitor-exit p0

    throw v1

    .line 172
    :cond_7
    :goto_4
    monitor-exit p0

    return-void
.end method
