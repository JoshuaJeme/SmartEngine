-- se_activity_instance
CREATE INDEX `idx_seai_process_instance_id` ON `se_activity_instance` (process_instance_id);

-- se_deployment_instance
CREATE INDEX `idx_sedi_user_id_and_logic_status` ON `se_deployment_instance` (logic_status,deployment_user_id);

-- se_execution_instance
CREATE INDEX `idx_seei_process_instance_id_and_status` ON `se_execution_instance` (process_instance_id,active);
CREATE INDEX `idx_seei_process_instance_id_and_activity_instance_id` ON `se_execution_instance` (process_instance_id,activity_instance_id);

-- se_process_instance
CREATE INDEX `idx_sepi_start_user_id` ON `se_process_instance` (start_user_id);
CREATE INDEX `idx_sepi_status` ON `se_process_instance` (status);

-- se_task_assignee_instance
CREATE INDEX `idx_setai_task_instance_id` ON `se_task_assignee_instance` (task_instance_id);
CREATE INDEX `idx_setai_assignee_id_and_type` ON `se_task_assignee_instance` (assignee_id,assignee_type);

-- se_task_instance
CREATE INDEX `idx_seti_status` ON `se_task_instance` (status);
CREATE INDEX `idx_seti_process_instance_id_and_status` ON `se_task_instance` (process_instance_id,status);
CREATE INDEX `idx_seti_process_definition_type` ON `se_task_instance` (process_definition_type);
CREATE INDEX `idx_seti_process_instance_id` ON `se_task_instance` (process_instance_id);
CREATE INDEX `idx_seti_claim_user_id` ON `se_task_instance` (claim_user_id);
CREATE INDEX `idx_seti_tag` ON `se_task_instance` (tag);
CREATE INDEX `idx_seti_activity_instance_id` ON `se_task_instance` (activity_instance_id);
CREATE INDEX `idx_seti_process_definition_activity_id` ON `se_task_instance` (process_definition_activity_id);

-- se_variable_instance
CREATE INDEX `idx_sevi_process_instance_id_and_execution_instance_id` ON `se_variable_instance` (process_instance_id,execution_instance_id);

