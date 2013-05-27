LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := bullet 
LOCAL_C_INCLUDES := $(LOCAL_PATH)/src $(LOCAL_PATH)/src/include $(LOCAL_PATH)/src/LinearMath \
                    $(LOCAL_PATH)/src/MiniCL $(LOCAL_PATH)/src/MiniCL/MiniCLTask \
                    $(LOCAL_PATH)/src/BulletSoftBody $(LOCAL_PATH)/src/BulletDynamics \
                    $(LOCAL_PATH)/src/BulletDynamics/Dynamics $(LOCAL_PATH)/src/BulletDynamics/Charecter \
                    $(LOCAL_PATH)/src/BulletDynamics/ConstraintSolver \
                    $(LOCAL_PATH)/src/BulletCollision $(LOCAL_PATH)/src/BulletCollision/BroadphaseCollision \
                    $(LOCAL_PATH)/src/BulletCollision/CollisionDispatch \
                    $(LOCAL_PATH)/src/BulletCollision/CollisionShapes \
                    $(LOCAL_PATH)/src/BulletCollision/Gimpact \
                    $(LOCAL_PATH)/src/BulletCollision/NarrowPhaseCollision \
                    $(LOCAL_PATH)/src/BulletMultiThreaded
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/src/*.c) \
        $(wildcard $(LOCAL_PATH)/src/LinearMath/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/MiniCL/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/MiniCL/MiniCLTask/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletSoftBody/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletDynamics/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletDynamics/Dynamics/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletDynamics/ConstraintSolver/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletDynamics/Character/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletCollision/BroadphaseCollision/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletCollision/CollisionDispatch/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletCollision/CollisionShapes/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletCollision/Gimpact/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletCollision/NarrowPhaseCollision/*.cpp) \
        $(wildcard $(LOCAL_PATH)/src/BulletMultiThreaded))
LOCAL_LDLIBS := -lm -lGLESv2 -llog
include $(BUILD_SHARED_LIBRARY)
